defmodule Sonata.Query do
  defstruct [columns: [],
             from: nil,
             joins: [],
             where: nil,
             group_by: [],
             having: nil,
             distinct: [],
             order_by: [],
             limit: nil,
             offset: nil,
             struct: nil]

  def select() do
    %__MODULE__{}
  end

  def select(columns) do
    select()
    |> columns(columns)
  end

  def columns(q, column) when not is_list(column) do
    columns(q, [column])
  end
  def columns(%{columns: c} = q, columns) do
    %{q | columns: c ++ columns}
  end

  def distinct(q) do
    %{q | distinct: true}
  end
  def distinct(%{distinct: true} = q, d) when is_list(d) do
    %{q | distinct: d}
  end
  def distinct(%{distinct: distinct} = q, d) when is_list(d) do
    %{q | distinct: distinct ++ d}
  end
  def distinct(q, d) do
    distinct(q, [d])
  end

  def from(q, from) do
    %{q | from: from}
  end
  def from(q, from, alias) do
    %{q | from: {from, alias}}
  end

  def as(field, alias) do
    {field, alias}
  end

  joins = [
    :join,
    :inner_join,
    :left_outer_join,
    :right_outer_join,
    :full_outer_join,
    :cross_join,
    :natural_join,
  ]

  for join <- joins do
    command = join |> to_string() |> String.upcase() |> String.replace("_", " ")
    def unquote(join)(%{joins: joins} = q, table, on) do
      join = %__MODULE__.Join{
        command: unquote(command),
        table: table,
        on: on,
      }
      %{q | joins: [join | joins]}
    end
  end

  def where(q, field, operator, value) do
    where(q, [{field, operator, value}])
  end
  def where(%{where: where} = q, kvs) when is_list(kvs) do
    where = Enum.reduce(kvs, where, fn
      ({k, v}, nil) ->
        Sonata.Expr.column(k)
        |> Sonata.Operator.=(v)
      ({k, op, v}, nil) ->
        col = Sonata.Expr.column(k)
        apply(Sonata.Operator, op, [col, v])
      (clause, nil) ->
        clause
      ({k, v}, acc) ->
        k = Sonata.Expr.column(k)
        Sonata.Expr.and(Sonata.Operator.=(k, v), acc)
      ({k, op, v}, acc) ->
        col = Sonata.Expr.column(k)
        apply(Sonata.Operator, op, [col, v])
        |> Sonata.Expr.and(acc)
      (clause, acc) ->
        clause
        |> Sonata.Expr.and(acc)
    end)
    %{q | where: where}
  end
  def where(%{where: _} = q, clause) do
    where(q, [clause])
  end

  def group_by(%{group_by: group_by} = q, c) when is_list(c) do
    %{q | group_by: group_by ++ c}
  end
  def group_by(q, c) do
    group_by(q, [c])
  end

  def having(q, expr) do
    %{q | having: expr}
  end

  def order_by(%{order_by: expressions} = q, e) when is_list(e) do
    %{q | order_by: expressions ++ e}
  end
  def order_by(order_by, e) do
    order_by(order_by, [e])
  end
  def order_by(order_by, e, order) when order in [:asc, :desc] do
    order_by(order_by, [{e, order}])
  end

  def limit(q, limit) do
    %{q | limit: limit}
  end

  def offset(q, offset) do
    %{q | offset: offset}
  end

  def into_struct(q, struct) do
    %{q | struct: struct}
  end
end

defimpl Sonata.Postgres, for: Sonata.Query do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(query, opts, idx) do
    {distinct, distinct_params, idx} = distinct(query.distinct, opts, idx)
    {columns, column_params, idx} = columns(query.columns, opts, idx)
    {from, from_params, idx} = from(query.from, opts, idx)
    {joins, joins_params, idx} = joins(query.joins, opts, idx)
    {where, where_params, idx} = where(query.where, opts, idx)
    {group_by, group_by_params, idx} = group_by(query.group_by, opts, idx)
    {having, having_params, idx} = having(query.having, opts, idx)
    {order_by, order_by_params, idx} = order_by(query.order_by, opts, idx)
    {limit, limit_params, idx} = limit(query.limit, opts, idx)
    {offset, offset_params, idx} = offset(query.offset, opts, idx)

    {
      Utils.join([
        "SELECT",
        distinct,
        columns,
        from,
        joins,
        where,
        group_by,
        having,
        order_by,
        limit,
        offset
      ], " "),

      Stream.concat([
        distinct_params,
        column_params,
        from_params,
        joins_params,
        where_params,
        group_by_params,
        having_params,
        order_by_params,
        limit_params,
        offset_params
      ]),

      idx
    }
  end

  def on_row(%{struct: nil}, _) do
    nil
  end
  def on_row(%{struct: struct}, _) do
    fn(row) -> struct.__from_row__(row) end
  end

  defp distinct(distinct, _, idx) when distinct in [nil, false, []] do
    {nil, [], idx}
  end
  defp distinct(true, _, idx) do
    {"DISTINCT", [], idx}
  end
  defp distinct(distinct, opts, idx) when is_list(distinct) do
    {columns, params, idx} = Utils.columns(distinct, opts, idx)
    {["DISTINCT ON (", columns, ")"], params, idx}
  end

  defp columns([], _, idx) do
    {"*", [], idx}
  end
  defp columns(columns, _, idx) do
    {
      columns
      |> Enum.map(fn(column) ->
        case (column) do
          {table, column} ->
            [Utils.escape(table), ".", Utils.escape(column)]
          {table, column, as} ->
            [Utils.escape(table), ".", Utils.escape(column), " AS ", Utils.escape(as)]
          column ->
            Utils.escape(column)
        end
      end)
      |> Enum.join(", "),
      [],
      idx
    }
  end

  defp from(nil, _, idx) do
    {nil, [], idx}
  end
  defp from(from, _, idx) when is_binary(from) or is_atom(from) do
    {["FROM ", Utils.escape(from)], [], idx}
  end
  defp from({from, alias}, opts, idx) do
    {from, params, idx} = from(from, opts, idx)
    {[from, " AS ", alias], params, idx}
  end
  defp from(from, opts, idx) do
    {from, params, idx} = PG.to_sql(from, opts, idx)
    {["FROM (", from, ")"], params, idx}
  end

  defp joins([], _, idx) do
    {nil, [], idx}
  end
  defp joins(joins, opts, idx) do
    Utils.list_to_sql(joins, opts, idx)
  end

  defp where(nil, _, idx) do
    {nil, [], idx}
  end
  defp where(expr, opts, idx) do
    {where, params, idx} = PG.to_sql(expr, opts, idx)
    {["WHERE ", where], params, idx}
  end

  defp group_by([], _, idx) do
    {nil, [], idx}
  end
  defp group_by(columns, opts, idx) do
    {columns, params, idx} = Utils.columns(columns, opts, idx)
    {["GROUP BY ", columns], params, idx}
  end

  defp having(nil, _, idx) do
    {nil, [], idx}
  end
  defp having(expr, opts, idx) do
    {having, params} = PG.to_sql(expr, opts, idx)
    {["HAVING ", having], params, idx}
  end

  defp order_by([], _, idx) do
    {nil, [], idx}
  end
  defp order_by(columns, opts, idx) do
    {columns, params, idx} = Utils.list_to_sql(columns, opts, idx, &(&1), fn
      ({expr, order}, opts, idx) ->
        {sql, params, idx} = PG.to_sql(expr, opts, idx)
        {[sql, order_by_op(order)], params, idx}
      (expr, opts, idx) ->
        PG.to_sql(expr, opts, idx)
    end)
    {["ORDER BY ", Utils.join(columns, ", ")], params, idx}
  end

  defp order_by_op(:asc), do: " ASC"
  defp order_by_op(:desc), do: " DESC"

  defp limit(limit, _, idx) when limit in [:all, nil] do
    {nil, [], idx}
  end
  defp limit(limit, opts, idx) do
    {limit, params, idx} = PG.to_sql(limit, opts, idx)
    {["LIMIT ", limit], params, idx}
  end

  defp offset(nil, _, idx) do
    {nil, [], idx}
  end
  defp offset(offset, opts, idx) do
    {offset, params, idx} = PG.to_sql(offset, opts, idx)
    {["OFFSET ", offset], params, idx}
  end
end
