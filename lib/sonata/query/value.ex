defmodule Sonata.Query.Value do
  defstruct [:value, :as]
end

defimpl Sonata.Postgres, for: Sonata.Query.Value do
  def to_sql(%{value: value, as: nil}, _, idx) do
    {"$#{idx}", [value], idx + 1}
  end
  def to_sql(%{value: value, as: as}, _, idx) do
    {"$#{idx} #{as}", [value], idx + 1}
  end

  def on_row(_, _) do
    nil
  end
end
