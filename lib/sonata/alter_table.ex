defmodule Sonata.AlterTable do
  use Sonata.Definition

  def alter_table(table) do
    %Sonata.AlterTable{table: table}
  end
end
