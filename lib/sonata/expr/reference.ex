defmodule Sonata.Expr.Reference do
  defstruct [:table, :column, :as]
end

defimpl Sonata.Postgres, for: Sonata.Expr.Reference do
  alias Sonata.Postgres.Utils

  def to_sql(query, _, idx) do
    table = table(query)
    column = column(query.column)
    as = as(query.as)

    {[
      table,
      column,
      as
    ], [], idx}
  end

  defp table(%{table: nil}) do
    ""
  end
  defp table(%{table: table, column: column}) when not is_nil(column) do
    [Utils.escape(table), "."]
  end
  defp table(%{table: table}) do
    Utils.escape(table)
  end

  defp column(nil) do
    ""
  end
  defp column(column) do
    Utils.escape(column)
  end

  defp as(nil) do
    ""
  end
  defp as(as) do
    [" AS ", Utils.escape(as)]
  end

  def on_row(_, _) do
    nil
  end

  defp as(nil) do
    ""
  end
  defp as(as) do
    [" AS ", as |> Utils.escape()]
  end
end
