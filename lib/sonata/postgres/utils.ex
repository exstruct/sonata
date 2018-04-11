defmodule Sonata.Postgres.Utils do
  alias Sonata.Postgres, as: PG

  def columns([], _, idx) do
    {"*", [], idx}
  end
  def columns(columns, opts, idx) do
    {sql, {params, idx}} = Enum.map_reduce(columns, {[], idx}, fn(column, {params, idx}) ->
      {column, p, idx} = column(column, opts, idx)
      {[", ", column], {Stream.concat(params, p), idx}}
    end)
    {pop_comma(sql), params, idx}
  end

  def column(column, _, idx) when is_binary(column) or is_atom(column) do
    {escape(column), [], idx}
  end
  def column({column, alias}, opts, idx) do
    {column, params, idx} = column(column, opts, idx)
    {[column, " AS ", escape(alias)], params, idx}
  end
  def column(column, opts, idx) do
    PG.to_sql(column, opts, idx)
  end

  def pop_comma({columns, params, idx}) do
    {pop_comma(columns), params, idx}
  end
  def pop_comma([[", " | column] | columns]) do
    [column | columns]
  end
  def pop_comma(other) do
    other
  end

  def join([], _delim) do
    []
  end
  def join([item | rest], delim) when item in ["", nil] do
    join(rest, delim)
  end
  def join([item | rest], delim) do
    case join(rest, delim) do
      [] ->
        item
      rest ->
        [item, delim, rest]
    end
  end
  def join(stream, delim) do
    stream
    |> Enum.to_list()
    |> join(delim)
  end

 def list_to_sql(list, opts, idx, mapper \\ &(&1), to_sql \\ &PG.to_sql/3) do
    Enum.reduce(list, {[], [], idx}, fn(item, {acc, acc_params, idx}) ->
      {sql, params, idx} = to_sql.(item, opts, idx)
      {[acc | mapper.(sql)], Stream.concat(acc_params, params), idx}
    end)
  end

  def list_rev_to_sql(list, opts, idx, mapper \\ &(&1), to_sql \\ &PG.to_sql/3) do
    Enum.reduce(list, {[], [], idx}, fn(item, {acc, acc_params, idx}) ->
      {sql, params, idx} = to_sql.(item, opts, idx)
      {[mapper.(sql) | acc], Stream.concat(params, acc_params), idx}
    end)
  end

  def escape(value) when is_binary(value) do
    "\"" <> String.replace(value, "\"", "\"\"") <> "\""
  end
  def escape(value) when is_atom(value) do
    value
    |> Atom.to_string()
    |> escape()
  end
end
