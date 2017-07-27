defmodule Sonata.Expr.Operator do
  defstruct [:operator, :rhs, :lhs]
end

defimpl Sonata.Postgres, for: Sonata.Expr.Operator do
  alias Sonata.Postgres, as: PG

  def to_sql(%{operator: operator, rhs: rhs, lhs: lhs}, opts, idx) do
    {parens, opts} =
      case operator do
        op when op in ["BETWEEN", "NOT BETWEEN"] ->
          {Map.get(opts, :parens), Map.put(opts, :parens, false)}
        _ ->
          Map.pop(opts, :parens)
      end

    {lhs, lhs_params, idx} = PG.to_sql(lhs, opts, idx)
    {rhs, rhs_params, idx} = PG.to_sql(rhs, opts, idx)
    sql = [lhs, " ", operator, " ", rhs]
    sql =
      if parens == false do
        sql
      else
        ["(", sql, ")"]
      end
    {sql, Stream.concat(lhs_params, rhs_params), idx}
  end

  def on_row(_, _) do
    nil
  end
end
