defprotocol Sonata.Postgres do
  def to_sql(statement, opts, idx)
  def on_row(statement, opts)
end

defimpl Sonata.Postgres, for: [Integer, Float, Atom, BitString] do
  def to_sql(value, opts, idx) when is_atom(value) and not value in [true, false] do
    value
    |> Atom.to_string()
    |> to_sql(opts, idx)
  end
  def to_sql(value, %{params: false}, idx) do
    {escape(value), [], idx}
  end
  def to_sql(value, _opts, idx) do
    {"$#{idx}", [value], idx + 1}
  end

  defp escape(value) when is_number(value) do
    to_string(value)
  end
  defp escape(value) when is_binary(value) do
    "'" <> String.replace(value, "'", "''") <> "'"
  end

  def on_row(_, _) do
    nil
  end
end
