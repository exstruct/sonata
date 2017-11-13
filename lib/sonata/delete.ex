defmodule Sonata.Delete do
  defstruct [from: nil,
             where: nil]

  def delete() do
    %__MODULE__{}
  end

  def from(q, from) do
    %{q | from: from}
  end
  def from(q, from, alias) do
    %{q | from: {from, alias}}
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
        Sonata.Operator.=(k, v)
        |> Sonata.Expr.and(acc)
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
end

defimpl Sonata.Postgres, for: Sonata.Delete do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(query, opts, idx) do
    {from, from_params, idx} = from(query.from, opts, idx)
    {where, where_params, idx} = where(query.where, opts, idx)

    {
      Utils.join([
        "DELETE",
        from,
        where
      ], " "),

      Stream.concat([
        from_params,
        where_params,
      ]),

      idx
    }
  end

  def on_row(_, _) do
    nil
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

  defp where(nil, _, idx) do
    {nil, [], idx}
  end
  defp where(expr, opts, idx) do
    {where, params, idx} = PG.to_sql(expr, opts, idx)
    {["WHERE ", where], params, idx}
  end
end
