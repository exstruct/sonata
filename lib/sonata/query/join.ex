defmodule Sonata.Query.Join do
  defstruct [:command, :table, :on,]
end

defimpl Sonata.Postgres, for: Sonata.Query.Join do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{command: command, table: table, on: {column1, column2}}, _, idx) do
    # {on, params, idx} = PG.to_sql(on, opts, idx)
    table = table(table)
    column1 = column(column1)
    column2 = column(column2)

    {
      Utils.join([
        command,
        table,
        "ON",
        column1,
        "=",
        column2
      ], " "),

      [],

      idx
    }
  end

  def on_row(_, _) do
    nil
  end

  defp table(nil) do
    ""
  end
  defp table({table, as}) do
    [Utils.escape(table), " AS ", Utils.escape(as)]
  end
  defp table(table) do
    table
    |> Utils.escape()
  end

  defp column({nil, column, nil}) do
    Utils.escape(column)
  end
  defp column({nil, column, as}) do
    [Utils.escape(column), " AS ", Utils.escape(as)]
  end
  defp column({table, column, nil}) do
    [Utils.escape(table), ".", Utils.escape(column)]
  end
  defp column({table, column, as}) do
    [Utils.escape(table), ".", Utils.escape(column), " AS ", Utils.escape(as)]
  end
  defp column({table, column}) do
    column({table, column, nil})
  end
end
