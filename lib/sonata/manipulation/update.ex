defmodule Sonata.Manipulation.Update do
  defstruct [table: nil,
             table_alias: nil,
             sets: [],
             where: nil,
             returning: []]
end

defimpl Sonata.Postgres, for: Sonata.Manipulation.Update do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(update, opts, idx) do
    {table, table_params, idx} = table(update.table, opts, idx)
    {table_alias, table_alias_params, idx} = table_alias(update.table_alias, opts, idx)
    {sets, sets_params, idx} = sets(update.sets, opts, idx)
    {where, where_params, idx} = where(update.where, opts, idx)
    {returning, returning_params, idx} = returning(update.returning, opts, idx)

    {
      Utils.join([
        "UPDATE",
        table,
        table_alias,
        sets,
        where,
        returning
      ], " "),

      Stream.concat([
        table_params,
        table_alias_params,
        sets_params,
        where_params,
        returning_params
      ]),

      idx
    }
  end

  def on_row(_, _) do
    nil
  end

  defp table(table, _, idx) when table in [nil, false, ""] do
    {nil, [], idx}
  end
  defp table(table, _, idx) when is_binary(table) do
    {Utils.escape(table), [], idx}
  end

  defp table_alias(nil, _, idx) do
    {nil, [], idx}
  end
  defp table_alias(alias, _, idx) do
    {[" AS ", Utils.escape(alias)], [], idx}
  end

  defp sets(sets, _, idx) when sets in [nil, false, "", []] do
    {nil, [], idx}
  end
  defp sets(sets, opts, idx) do
    {sets, {params, idx}} = Enum.map_reduce(sets, {[], idx}, fn(%{lhs: field, operator: operator, rhs: value}, {params, idx}) ->
      {field, p, idx} = Sonata.Postgres.to_sql(field, opts, idx)
      {value, p, idx} = Sonata.Postgres.to_sql(value, opts, idx)
      {[field, operator, " (", value, ")"], {Stream.concat(params, p), idx}}
    end)
    {["SET ", Sonata.Postgres.Utils.join(sets, ", ")], params, idx}
  end

  defp where(nil, _, idx) do
    {nil, [], idx}
  end
  defp where(expr, opts, idx) do
    {where, params, idx} = PG.to_sql(expr, opts, idx)
    {["WHERE ", where], params, idx}
  end

  # TODO: support returning alias
  defp returning(returning, _, idx) when returning in [nil, false, "", []] do
    {nil, [], idx}
  end
  defp returning(returning, opts, idx) do
    {sql, params, idx} = PG.Utils.columns(returning, opts, idx)
    {["RETURNING ", sql], params, idx}
  end
end
