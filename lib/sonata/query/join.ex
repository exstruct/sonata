defmodule Sonata.Query.Join do
  defstruct [:command, :table, :on,]
end

defimpl Sonata.Postgres, for: Sonata.Query.Join do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{command: command, table: table, on: on}, opts, idx) do
    {on, params, idx} = PG.to_sql(on, opts, idx)

    {
      Utils.join([
        command,
        Utils.escape(table),
        "ON",
        on
      ], " "),

      params,

      idx
    }
  end

  def on_row(_, _) do
    nil
  end
end
