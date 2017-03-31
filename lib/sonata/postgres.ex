defprotocol Sonata.Postgres do
  def to_sql(statement, opts, idx)
  def on_row(statement, opts)

  Kernel.def to_sql(statement, opts \\ []) do
    {sql, params, _idx} = to_sql(statement, opts, 1)
    {sql, Enum.to_list(params), on_row(statement, opts)}
  end

  defmodule Utils do
    import Kernel
    def columns([], _, idx) do
      {"*", [], idx}
    end
    def columns(columns, opts, idx) do
      {sql, {params, idx}} = Enum.map_reduce(columns, {[], idx}, fn(column, {params, idx}) ->
        {column, p, idx} = column(column, opts, idx)
        {[", ", column], {Stream.concat(params, p), idx}}
      end)
      {pop_comma(sql), params, idx}
    end

    def column(column, _, idx) when is_binary(column) do
      {escape_keyword(column), [], idx}
    end
    def column({column, alias}, opts, idx) do
      {column, params, idx} = column(column, opts, idx)
      {[column, " ", escape_keyword(alias)], params, idx}
    end
    def column(column, opts, idx) do
      Sonata.Postgres.to_sql(column, opts, idx)
    end

    def pop_comma({columns, params, idx}) do
      {pop_comma(columns), params, idx}
    end
    def pop_comma([[", " | column] | columns]) do
      [column | columns]
    end
    def pop_comma(other) do
      other
    end

    def join([], _delim) do
      []
    end
    def join([item | rest], delim) when item in ["", nil] do
      join(rest, delim)
    end
    def join([item | rest], delim) do
      case join(rest, delim) do
        [] ->
          item
        rest ->
          [item, delim, rest]
      end
    end

    def escape_keyword(value) do
      to_string(value)
    end
  end
end

defimpl Sonata.Postgres, for: [Integer, Float, Atom, BitString] do
  def to_sql(value, opts, idx) when is_atom(value) and not value in [true, false] do
    value
    |> Atom.to_string()
    |> to_sql(opts, idx)
  end
  def to_sql(value, _opts, idx) do
    {"$#{idx}", [value], idx + 1}
  end

  def on_row(_, _) do
    nil
  end
end

defimpl Sonata.Postgres, for: Sonata.OrderBy do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{query: query, order_by: e}, opts, idx) do
    {query, query_params, idx} = PG.to_sql(query, opts, idx)
    {e, e_params, idx} = Utils.columns(e, opts, idx)

    {
      [query, " ORDER BY ", e],
      Stream.concat(query_params, e_params),
      idx
    }
  end

  def on_row(_, _) do
    nil
  end
end

defimpl Sonata.Postgres, for: Sonata.Query do
  alias Sonata.Postgres, as: PG
  import PG.Utils

  def to_sql(query, opts, idx) do
    {distinct, distinct_params, idx} = distinct(query.distinct, opts, idx)
    {columns, column_params, idx} = columns(query.columns, opts, idx)
    {from, from_params, idx} = from(query.from, opts, idx)
    {where, where_params, idx} = where(query.where, opts, idx)
    {group_by, group_by_params, idx} = group_by(query.group_by, opts, idx)
    {having, having_params, idx} = having(query.having, opts, idx)
    {order_by, order_by_params, idx} = order_by(query.order_by, opts, idx)
    {limit, limit_params, idx} = limit(query.limit, opts, idx)
    {offset, offset_params, idx} = offset(query.offset, opts, idx)

    {
      join([
        "SELECT",
        distinct,
        columns,
        from,
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
    {columns, params, idx} = columns(distinct, opts, idx)
    {["DISTINCT ON (", columns, ")"], params, idx}
  end

  defp from(nil, _, idx) do
    {nil, [], idx}
  end
  defp from(from, _, idx) when is_binary(from) do
    {["FROM ", escape_keyword(from)], [], idx}
  end
  defp from({from, alias}, opts, idx) do
    {from, params, idx} = from(from, opts, idx)
    {[from, " AS ", alias], params, idx}
  end
  defp from(from, opts, idx) do
    {from, params, idx} = PG.to_sql(from, opts, idx)
    {["FROM (", from, ")"], params, idx}
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
    {columns, params} = columns(columns, opts, idx)
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
    {columns, params, idx} = columns(columns, opts, idx)
    {["ORDER BY ", columns], params, idx}
  end

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

defimpl Sonata.Postgres, for: [Sonata.Combination.Union, Sonata.Combination.Intersect, Sonata.Combination.Except] do
  alias Sonata.Postgres, as: PG

  @command [" ", (@for |> Module.split() |> List.last() |> String.upcase), " "]

  def to_sql(%{lhs: lhs, rhs: rhs, all: all}, opts, idx) do
    {lhs, lhs_params, idx} = PG.to_sql(lhs, opts, idx)
    {rhs, rhs_params, idx} = PG.to_sql(rhs, opts, idx)
    {["(", lhs, @command, all(all), rhs, ")"], Stream.concat(lhs_params, rhs_params), idx}
  end

  # TODO look at the rhs?
  def on_row(_, _) do
    nil
  end

  defp all(true) do
    " ALL"
  end
  defp all(_) do
    ""
  end
end

defimpl Sonata.Postgres, for: Sonata.Expr.Operation do
  alias Sonata.Postgres, as: PG

  def to_sql(%{operator: operator, rhs: rhs, lhs: lhs}, opts, idx) do
    {lhs, lhs_params, idx} = PG.to_sql(lhs, opts, idx)
    {rhs, rhs_params, idx} = PG.to_sql(rhs, opts, idx)
    {["(", lhs, " ", operator, " ", rhs, ")"], Stream.concat(lhs_params, rhs_params), idx}
  end
end

defimpl Sonata.Postgres, for: Sonata.Expr.Reference do
  def to_sql(%{name: name}, _, idx) do
    # TODO escape the reference name
    {to_string(name), [], idx}
  end

  def on_row(_, _) do
    nil
  end
end

defimpl Sonata.Postgres, for: Sonata.CreateTable do
  def to_sql(%{add_columns: columns, table: table}, opts, idx) do
    ## TODO escape the table
    sql = ["CREATE TABLE ", table, " ("]
    {columns, {params, idx}} = Enum.map_reduce(columns, {[], idx}, fn(column, {acc_params, idx}) ->
      {sql, params, idx} = Sonata.Postgres.to_sql(column, opts, idx)
      {sql, {Stream.concat(acc_params, params), idx}}
    end)

    ## TODO handle the other options

    {[sql, Sonata.Postgres.Utils.join(columns, ", "), ");"], params, idx}
  end

  def on_row(_, _) do
    nil
  end
end

defimpl Sonata.Postgres, for: Sonata.Definition.Column do
  alias Sonata.Postgres, as: PG
  import PG.Utils

  def to_sql(column, opts, idx) do
    {name, name_params, idx} = name(column.name, opts, idx)
    {type, type_params, idx} = type(column.type, opts, idx)
    {check, check_params, idx} = check(column.check, opts, idx)
    {reference, reference_params, idx} = reference(column.reference, opts, idx)
    {primary_key, primary_key_params, idx} = primary_key(column.primary_key, opts, idx)
    {constraint, constraint_params, idx} = constraint(column.constraint, opts, idx)
    {unique, unique_params, idx} = unique(column.unique, opts, idx)
    {default, default_params, idx} = default(column.default, opts, idx)
    {not_null, not_null_params, idx} = not_null(column.not_null, opts, idx)

    {
      join([
        name,
        type,
        check,
        reference,
        primary_key,
        constraint,
        unique,
        default,
        not_null
      ], " "),

      Stream.concat([
        name_params,
        type_params,
        check_params,
        reference_params,
        primary_key_params,
        constraint_params,
        unique_params,
        default_params,
        not_null_params
      ]),

      idx
    }
  end

  def on_row(_, _) do
    nil
  end

  defp name(nil, _, idx) do
    {nil, [], idx}
  end
  defp name(name, _, idx) do
    {to_string(name), [], idx}
  end

  defp type(nil, _, idx) do
    {nil, [], idx}
  end
  defp type(type, _, idx) do
    {to_string(type), [], idx}
  end

  defp check(nil, _, idx) do
    {nil, [], idx}
  end
  defp check(check, opts, idx) do
    {check, params, idx} = PG.to_sql(check, opts, idx)
    {["CHECK ", check], params, idx}
  end

  defp reference(nil, _, idx) do
    {nil, [], idx}
  end
  defp reference({column, table}, _, idx) do
    {["REFERENCES ", to_string(table), " (", to_string(column), ")"], [], idx}
  end
  defp reference(table, _, idx) when is_binary(table) or is_atom(table) do
    {["REFERENCES ", to_string(table)], [], idx}
  end

  defp primary_key(true, _, idx) do
    {"PRIMARY KEY", [], idx}
  end
  defp primary_key(_, _, idx) do
    {nil, [], idx}
  end

  defp constraint(nil, _, idx) do
    {nil, [], idx}
  end
  defp constraint(constraint, opts, idx) do
    {constraint, params, idx} = PG.to_sql(constraint, opts, idx)
    {["CONSTRAINT ", constraint], params, idx}
  end

  defp unique(true, _, idx) do
    {"UNIQUE", [], idx}
  end
  defp unique(_, _, idx) do
    {nil, [], idx}
  end

  defp not_null(true, _, idx) do
    {"NOT NULL", [], idx}
  end
  defp not_null(_, _, idx) do
    {nil, [], idx}
  end

  defp default(nil, _, idx) do
    {nil, [], idx}
  end
  defp default(default, opts, idx) do
    {default, params, idx} = PG.to_sql(default, opts, idx)
    {["DEFAULT ", default], params, idx}
  end
end

defimpl Sonata.Postgres, for: Sonata.Manipulation.Update do
  alias Sonata.Postgres, as: PG
  import PG.Utils

  def to_sql(update, opts, idx) do
    {table, table_params, idx} = table(update.table, opts, idx)
    {table_alias, table_alias_params, idx} = table_alias(update.table_alias, opts, idx)
    {sets, sets_params, idx} = sets(update.sets, opts, idx)
    {where, where_params, idx} = where(update.where, opts, idx)
    {returning, returning_params, idx} = returning(update.returning, opts, idx)

    {
      join([
        "UPDATE",
        table,
        table_alias,
        sets,
        where,
        returning
      ], " "),

      Stream.concat([
        table_params,
        table_alias_params,
        sets_params,
        where_params,
        returning_params
      ]),

      idx
    }
  end

  defp table(table, _, idx) when table in [nil, false, ""] do
    {nil, [], idx}
  end
  defp table(table, opts, idx) when is_binary(table) do
    {escape_keyword(table), opts, idx}
  end

  defp table_alias(nil, _, idx) do
    {nil, [], idx}
  end
  defp table_alias(alias, opts, idx) do
    {[" AS ", escape_keyword(alias)], opts, idx}
  end

  defp sets(sets, _, idx) when sets in [nil, false, "", []] do
    {nil, [], idx}
  end
  defp sets(sets, opts, idx) do
    {sets, {params, idx}} = Enum.map_reduce(sets, {[], idx}, fn(set, {params, idx}) ->
      {set, p, idx} = Sonata.Postgres.to_sql(set, opts, idx)
      {set, {Stream.concat(params, p), idx}}
    end)
    {["SET ", Sonata.Postgres.Utils.join(sets, ", ")], params, idx}
  end

  defp where(nil, _, idx) do
    {nil, [], idx}
  end
  defp where(expr, opts, idx) do
    {where, params, idx} = PG.to_sql(expr, opts, idx)
    {["WHERE ", where], params, idx}
  end

  defp returning(returning, _, idx) when returning in [nil, false, "", []] do
    {nil, [], idx}
  end
  defp returning(returning, opts, idx) do
    {returning, {params, idx}} = Enum.map_reduce(returning, {[], idx}, fn
      ({column, alias}, {params, idx}) ->
        {column, p, idx} = Sonata.Postgres.to_sql(column, opts, idx)
        {[column, " AS ", alias], {Stream.concat(params, p), idx}}
      (returning, {params, idx}) ->
        {returning, p, idx} = Sonata.Postgres.to_sql(returning, opts, idx)
        {returning, {Stream.concat(params, p), idx}}
    end)
    {["RETURNING ", returning], params, idx}
  end
end

defimpl Sonata.Postgres, for: Sonata.Misc.Call do
  def to_sql(%{function: fun, arguments: arguments}, opts, idx) do
    {arguments, {params, idx}} = Enum.map_reduce(arguments, {[], idx}, fn(arg, {params, idx}) ->
      {arg, p, idx} = Sonata.Postgres.to_sql(arg, opts, idx)
      {arg, {Stream.concat(params, p), idx}}
    end)

    {[to_string(fun), "(", Sonata.Postgres.Utils.join(arguments, ", "), ")"], params, idx}
  end

  def on_row(_, _) do
    nil
  end
end

defimpl Sonata.Postgres, for: Sonata.Query.Value do
  def to_sql(%{value: value, as: nil}, _, idx) do
    {"$#{idx}", [value], idx + 1}
  end
  def to_sql(%{value: value, as: as}, _, idx) do
    {"$#{idx} #{as}", [value], idx + 1}
  end
end

defimpl Sonata.Postgres, for: Sonata.Expr.Value do
  def to_sql(%{value: value}, _, idx) do
    {"$#{idx}", [value], idx + 1}
  end
end
