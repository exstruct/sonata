defmodule Sonata.DropTable do
  defstruct [table: nil]

  def drop_table(table) do
    %__MODULE__{table: table}
  end
end

defimpl Sonata.Postgres, for: Sonata.DropTable do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{table: table}, opts, idx) do
    {
      ["DROP TABLE", Utils.escape(table), ";"],
      [],
      idx
    }
  end

  def on_row(_, _) do
    nil
  end
end
