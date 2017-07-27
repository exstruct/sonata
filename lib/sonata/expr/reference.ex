defmodule Sonata.Expr.Reference do
  defstruct [:name]
end

defimpl Sonata.Postgres, for: Sonata.Expr.Reference do
  alias Sonata.Postgres.Utils

  def to_sql(%{name: name}, _, idx) do
    {Utils.escape(name), [], idx}
  end

  def on_row(_, _) do
    nil
  end
end
