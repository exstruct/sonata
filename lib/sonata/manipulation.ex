defmodule Sonata.Manipulation do
  defmodule Insertion do
    defstruct [table: nil,
               fields: [],
               rows: [],
               returning: [],
               default_values: nil]
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

    # TODO: support `kvs`
    def insert_into(table, _kvs) do
      insert_into(table)
    end

    def fields(insertion = %{fields: fields}, columns) do
      %{insertion | fields: fields ++ columns}
    end

    # TODO: support `INSERT INTO foo (valA, valB) VALUES (SELECT ...)`
    def values(insertion = %{rows: rows}, [first | _ ] = values) when is_list(first) do
      %{insertion | rows: Enum.into(rows, values)}
    end
    def values(insertion = %{rows: rows}, values) when is_list(values) do
      %{insertion | rows: Enum.into(rows, [values])}
    end

    def default_values(insertion = %{default_values: _}) do
      %{insertion | default_values: :true}
    end

    def update(table) do
      %Update{table: table}
    end

    def update(table, table_alias) do
      %Update{table: table, table_alias: table_alias}
    end

    def set(insertion = %Update{sets: sets}, kvs) do
      %{insertion | sets: sets ++ Enum.map(kvs, fn
        ({fields, value}) when is_list(fields) ->
          {Sonata.Expr.column_list(fields), value}
        ({fields, _value}) when is_tuple(fields) ->
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

    # TODO: support returning alias
    def returning(insertion = %{returning: returning}, fields) do
      %{insertion | returning: returning ++ fields}
    end
  end
end
