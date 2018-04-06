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
  def values(insertion = %{rows: rows}, [first | _ ] = values) when is_tuple(first) do
    %{insertion | rows: rows ++ values}
  end
  def values(insertion, values) when is_tuple(values) do
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
      ({sets, value}) when is_list(sets) ->
        Expr.op(Sonata.Expr.column_list(sets) = value)
      ({sets, _value}) when is_tuple(sets) ->
        sets
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

  def where(q, field, operator, value) do
    where(q, [{field, operator, value}])
  end
  def where(%{where: where} = q, kvs) when is_list(kvs) do
    where = Enum.reduce(kvs, where, fn
      ({k, v}, nil) ->
        Sonata.Expr.column(k)
        |> Sonata.Operator.=(v)
      ({k, op, v}, nil) ->
        col = Sonata.Expr.column(k)
        apply(Sonata.Operator, op, [col, v])
      (clause, nil) ->
        clause
      ({k, v}, acc) ->
        k = Sonata.Expr.column(k)
        Sonata.Expr.and(Sonata.Operator.=(k, v), acc)
      ({k, op, v}, acc) ->
        col = Sonata.Expr.column(k)
        apply(Sonata.Operator, op, [col, v])
        |> Sonata.Expr.and(acc)
      (clause, acc) ->
        clause
        |> Sonata.Expr.and(acc)
    end)
    %{q | where: where}
  end
  def where(%{where: _} = q, clause) do
    where(q, [clause])
  end
end
