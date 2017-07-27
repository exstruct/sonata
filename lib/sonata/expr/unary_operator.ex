defmodule Sonata.Expr.UnaryOperator do
  defstruct [:operator, :subject, :inverted]
end

defimpl Sonata.Postgres, for: Sonata.Expr.UnaryOperator do
  alias Sonata.Postgres, as: PG

  def to_sql(%{operator: operator, subject: subject, inverted: inverted}, opts, idx) do
    {subject, params, idx} = PG.to_sql(subject, opts, idx)
    sql =
      if inverted do
        [operator, " ", subject]
      else
        [subject, " ", operator]
      end
    {["(", sql, ")"], params, idx}
  end

  def on_row(_, _) do
    nil
  end
end
