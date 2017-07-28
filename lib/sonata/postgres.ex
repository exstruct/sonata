defprotocol Sonata.Postgres do
  def to_sql(statement, opts, idx)
  def on_row(statement, opts)
end

defimpl Sonata.Postgres, for: [Integer, Float, Atom, BitString] do
  def to_sql(value, %{params: false}, idx) do
    {escape(value), [], idx}
  end
  def to_sql(value, _opts, idx) when is_atom(value) and not value in [true, false, nil] do
    {escape(value), [], idx}
  end
  def to_sql(value, _opts, idx) do
    {"$#{idx}", [value], idx + 1}
  end

  defp escape(true) do
    "TRUE"
  end
  defp escape(false) do
    "FALSE"
  end
  defp escape(nil) do
    "NULL"
  end
  defp escape(value) when is_number(value) do
    to_string(value)
  end
  defp escape(value) when is_binary(value) do
    "'" <> String.replace(value, "'", "''") <> "'"
  end
  defp escape(value) when is_atom(value) do
    value
    |> Atom.to_string()
    |> Sonata.Postgres.Utils.escape()
  end

  def on_row(_, _) do
    nil
  end
end

defimpl Sonata.Postgres, for: Tuple do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(value, opts, idx) do
    {sql, params, idx} =
      value
      |> :erlang.tuple_to_list()
      |> Utils.list_to_sql(opts, idx)
    {Utils.join(sql, "."), params, idx}
  end

  def on_row(_, _) do
    nil
  end
end
