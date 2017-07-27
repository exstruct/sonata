defmodule Sonata.DropTable do
  defstruct [table: nil,
             if_exists: nil]

  def drop_table(table) do
    %__MODULE__{table: table}
  end

  def if_exists(table) do
    %{table | if_exists: true}
  end
end

defimpl Sonata.Postgres, for: Sonata.DropTable do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{table: table, if_exists: if_exists}, opts, idx) do
    if_exists = if_exists(if_exists)
    {
      ["DROP TABLE ", if_exists, Utils.escape(table), ";"],
      [],
      idx
    }
  end

  def if_exists(true) do
    "IF EXISTS "
  end
  def if_exists(_) do
    ""
  end

  def on_row(_, _) do
    nil
  end
end
