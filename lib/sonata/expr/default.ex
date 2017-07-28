defmodule Sonata.Expr.Default do
  defstruct []
end

defimpl Sonata.Postgres, for: Sonata.Expr.Default do
  def to_sql(_, _, idx) do
    {"DEFAULT", [], idx}
  end

  def on_row(_, _) do
    nil
  end
end
