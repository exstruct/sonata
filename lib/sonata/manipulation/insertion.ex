defmodule Sonata.Manipulation.Insertion do
  defstruct [table: nil,
             fields: [],
             rows: [],
             returning: [],
             default_values: nil]
end

defimpl Sonata.Postgres, for: Sonata.Manipulation.Insertion do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(insertion, opts, idx) do
    {table, table_params, idx} = table(insertion.table, opts, idx)
    {fields, fields_params, idx} = fields(insertion.fields, opts, idx)
    {default_values, default_values_params, idx} = default_values(insertion.default_values, opts, idx)
    {rows, rows_params, idx} = rows(insertion.rows, opts, idx)

    {
      Utils.join([
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
    {Utils.escape(table), opts, idx}
  end

  def fields([], _, idx) do
    {nil, [], idx}
  end
  def fields(fields, opts, idx) do
    # TODO
    {nil, [], idx}
  end

  def default_values(true, opts, idx) do
    {"DEFAULT VALUES", [], idx}
  end
  def default_values(_, _, idx) do
    {nil, [], idx}
  end

  def rows([], _, idx) do
    {nil, [], idx}
  end
  def rows(rows, opts, idx) do
    {rows, params, idx} = Utils.list_to_sql(rows, opts, idx, &(&1), fn(row, opts, idx) ->
      {row, params, idx} = Utils.list_to_sql(row, opts, idx)
      {Utils.join(row, ", "), params, idx}
    end)
    {["VALUES (", Utils.join(rows, "), ("), ")"], params, idx}
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
