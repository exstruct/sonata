defmodule Sonata.CreateTable do
  use Sonata.Definition

  def create_table(table) do
    %Sonata.CreateTable{table: table}
  end

  def create_table(table, columns) do
    create_table(table)
    |> add_column(columns)
  end
end

defimpl Sonata.Postgres, for: Sonata.CreateTable do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{add_columns: columns, table: table}, opts, idx) do
    opts = Map.put(opts, :params, false)

    ## TODO escape the table
    sql = ["CREATE TABLE ", table, " ("]
    {columns, {params, idx}} = Enum.map_reduce(columns, {[], idx}, fn(column, {acc_params, idx}) ->
      {sql, params, idx} = PG.to_sql(column, opts, idx)
      {sql, {Stream.concat(acc_params, params), idx}}
    end)

    ## TODO handle the other options

    {[sql, Utils.join(columns, ", "), ");"], params, idx}
  end

  def on_row(_, _) do
    nil
  end
end
