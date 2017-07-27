defmodule Sonata.Manipulation.Insertion do
  defstruct [table: nil,
             fields: [],
             rows: [],
             returning: [],
             default_values: nil]
end

defimpl Sonata.Postgres, for: Sonata.Manipulation.Insertion do
  alias Sonata.Postgres, as: PG
  import PG.Utils

  def to_sql(insertion, opts, idx) do
    {table, table_params, idx} = table(insertion.table, opts, idx)
    {fields, fields_params, idx} = fields(insertion.fields, opts, idx)
    {default_values, default_values_params, idx} = default_values(insertion.default_values, opts, idx)
    {rows, rows_params, idx} = rows(insertion.rows, opts, idx)

    {
      join([
        "INSERT INTO",
        table,
        fields,
        default_values,
        rows,
      ], " "),

      Stream.concat([
        table_params,
        fields_params,
        default_values_params,
        rows_params,
      ]),

      idx
    }
  end

  defp table(table, _, idx) when table in [nil, false, ""] do
    {nil, [], idx}
  end
  defp table(table, opts, idx) when is_binary(table) do
    {escape_keyword(table), opts, idx}
  end

  def fields(fields, _, idx) when fields in [nil, false, ""] do
    {nil, [], idx}
  end

  def default_values(:true, opts, idx) do
    {"DEFAULT VALUES", opts, idx}
  end

  def rows(rows, _, idx) when rows in [nil, false, ""] do
    {nil, [], idx}
  end
  # TODO
  def rows(rows, opts, idx) do
    {["VALUES"] ++ rows, opts, idx}
  end

  # TODO
  # defp on_conflict do
  # end
  # defp returning do
  # end

  def on_row(_, _) do
    nil
  end
end
