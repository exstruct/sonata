defmodule Sonata.Expr.Value do
  defstruct [:value]
end

defimpl Sonata.Postgres, for: Sonata.Expr.Value do
  def to_sql(%{value: value}, _, idx) do
    {"$#{idx}", [value], idx + 1}
  end

  def on_row(_, _) do
    nil
  end
end
