defmodule Sonata.AlterTable do
  use Sonata.Definition

  defmodule Builder do
    use Sonata.Definition.Builder

    def alter_table(table) do
      %Sonata.AlterTable{table: table}
    end
  end
end
