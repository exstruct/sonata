defmodule Sonata.Expr.UnaryOperator do
  defstruct [:operator, :rhs]
end

defimpl Sonata.Postgres, for: Sonata.Expr.UnaryOperator do
  alias Sonata.Postgres, as: PG

  def to_sql(%{operator: operator, rhs: rhs}, opts, idx) do
    {rhs, rhs_params, idx} = PG.to_sql(rhs, opts, idx)
    {["(", operator, " ", rhs, ")"], rhs_params, idx}
  end

  def on_row(_, _) do
    nil
  end
end
