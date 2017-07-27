defmodule Sonata.Manipulation.DoNothing do
  defstruct []
end

defimpl Sonata.Postgres, for: Sonata.Manipulation.DoNothing do
  alias Sonata.Postgres.Utils

  def to_sql(_, _, idx) do
    {"DO NOTHING", [], idx}
  end

  def on_row(_, _) do
    nil
  end
end
