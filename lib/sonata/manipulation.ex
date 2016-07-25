defmodule Sonata.Manipulation do
  defmodule Insertion do
    defstruct [table: nil,
               fields: [],
               rows: []]
  end

  defmodule Update do
    defstruct [table: nil]
  end

  defmodule Builder do
    def insert_into(table, kvs) when is_map(kvs) do
      # TODO figure out kvs
      %Sonata.Manipulation.Insertion{table: table}
    end

    def update(table, kvs) when is_map(kvs) do
      # TODO figure out kvs
      %Sonata.Manipulation.Update{table: table}
    end
  end
end
