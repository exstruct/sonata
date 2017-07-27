defmodule Sonata.Postgres.Utils do
  import Kernel
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

  def column(column, _, idx) when is_binary(column) do
    {escape_keyword(column), [], idx}
  end
  def column(column, _, idx) when is_atom(column) do
    {escape_keyword(Atom.to_string(column)), [], idx}
  end
  def column({column, alias}, opts, idx) do
    {column, params, idx} = column(column, opts, idx)
    {[column, " AS ", escape_keyword(alias)], params, idx}
  end
  def column(column, opts, idx) do
    Sonata.Postgres.to_sql(column, opts, idx)
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

  def escape_keyword(value) do
    to_string(value)
  end
end
