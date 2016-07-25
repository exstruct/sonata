defmodule Sonata.CreateTable do
  use Sonata.Definition

  defmodule Builder do
    use Sonata.Definition.Builder

    def create_table(table) do
      %Sonata.CreateTable{table: table}
    end

    def create_table(table, columns) do
      create_table(table)
      |> add_column(columns)
    end
  end
end
