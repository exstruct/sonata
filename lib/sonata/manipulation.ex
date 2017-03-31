defmodule Sonata.Manipulation do
  defmodule Insertion do
    defstruct [table: nil,
               fields: [],
               rows: []]
  end

  defmodule Update do
    defstruct [table: nil,
               table_alias: nil,
               sets: [],
               where: [],
               returning: []]
  end

  defmodule Builder do
    alias Sonata.Manipulation.{Insertion,Update}

    def insert_into(table) do
      %Insertion{table: table}
    end

    def insert_into(table, kvs) do
      insert_into(table)
    end

    def update(table) do
      %Update{table: table}
    end

    def update(table, table_alias \\ nil) do
      %Update{table: table, table_alias: table_alias}
    end

    def set(insertion, kvs) when is_map(kvs) do
      set(insertion, :maps.to_list(kvs))
    end
    def set(insertion = %Update{sets: sets}, kvs) when is_list(kvs) do
      %{insertion | sets: sets ++ kvs}
    end

    def set(insertion = %Update{sets: sets}, field, value) do
      %{insertion | sets: sets ++ [{field, value}]}
    end

    def where(insertion, kvs) when is_map(kvs) do
      where(insertion, :maps.to_list(kvs))
    end
    def where(insertion = %Update{where: where}, kvs) when is_list(kvs) do
      %{insertion | where: where ++ kvs}
    end

    def where(insertion = %Update{where: where}, field, value) do
      %{insertion | where: where ++ [{field, value}]}
    end

    def returning(insertion = %{returning: returning}, fields) do
      %{insertion | returning: returning ++ fields}
    end
  end
end
