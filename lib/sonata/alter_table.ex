defmodule Sonata.AlterTable do
  defstruct [table: nil]

  def alter_table(table) do
    %__MODULE__{table: table}
  end
end
