defmodule Sonata.Expr.Reference do
  defstruct [:name]
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
