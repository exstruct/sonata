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
               where: nil,
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

    def set(insertion = %Update{sets: sets}, kvs) do
      %{insertion | sets: sets ++ Enum.map(kvs, fn
        ({fields, value}) when is_list(fields) ->
          {Sonata.Expr.column_list(fields), value}
        ({fields, value}) when is_tuple(fields) ->
          fields
          |> :erlang.tuple_to_list()
          |> Sonata.Expr.column_list()
        ({field, value}) ->
          {Sonata.Expr.column(field), value}
      end)}
    end

    def set(insertion, field, value) do
      set(insertion, [{field, value}])
    end

    def returning(insertion = %{returning: returning}, fields) do
      %{insertion | returning: returning ++ fields}
    end
  end
end
