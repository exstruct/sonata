defmodule Sonata.Manipulation do
  alias __MODULE__.{Insertion,Update}

  alias Sonata.Expr
  require Expr

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
    %{insertion | rows: rows ++ values}
  end
  def values(insertion, values) when is_list(values) do
    values(insertion, [values])
  end

  def default_values(insertion) do
    %{insertion | default_values: :true}
  end

  def update(table) do
    %Update{table: table}
  end

  def update(table, table_alias) do
    %Update{table: table, table_alias: table_alias}
  end

  def set(insertion = %{sets: sets}, kvs) do
    %{insertion | sets: sets ++ Enum.map(kvs, fn
      ({fields, value}) when is_list(fields) ->
        Expr.op(Sonata.Expr.column_list(fields) = value)
      ({fields, _value}) when is_tuple(fields) ->
        fields
        |> :erlang.tuple_to_list()
        |> Sonata.Expr.column_list()
      ({field, value}) ->
        Expr.op(Sonata.Expr.column(field) = value)
    end)}
  end

  def set(insertion, field, value) do
    set(insertion, [{field, value}])
  end

  # TODO: support returning alias
  def returning(insertion = %{returning: returning}, fields) do
    %{insertion | returning: returning ++ fields}
  end

  def on_conflict(m, column, action) when is_atom(column) do
    on_conflict = %__MODULE__.OnConflict{
      target: Sonata.Expr.column_list([column]),
      action: action,
    }
    %{m | on_conflict: on_conflict}
  end

  def do_update() do
    %__MODULE__.DoUpdate{}
  end

  def do_nothing() do
    %__MODULE__.DoNothing{}
  end
end
