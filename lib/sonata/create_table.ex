defmodule Sonata.CreateTable do
  defstruct [table: nil,
             add_columns: [],
             checks: [],
             references: [],
             primary_key: nil,
             constraints: [],
             unique: [],
             if_not_exists: nil,
             temporary: nil,
             unlogged: nil,
             inherits: [],
             tablespace: nil,
             on_commit: nil]

  def create_table(table) do
    %__MODULE__{table: table}
  end

  def create_table(table, columns) do
    create_table(table)
    |> add_column(columns)
  end

  def add_column(%{add_columns: columns} = d, c) when is_list(c) do
    %{d | add_columns: columns ++ c}
  end
  def add_column(d, c) do
    add_column(d, [c])
  end

  def add_column(d, name, type) do
    col = Sonata.Builder.Column.column(name, type)
    add_column(d, [col])
  end

  def unique(d, u) when is_list(u) do
    unique(d, Sonata.Expr.column_list(u))
  end
  def unique(%{unique: unique} = d, u) do
    %{d | unique: [u | unique]}
  end

  def primary_key(d, u) when is_list(u) do
    primary_key(d, Sonata.Expr.column_list(u))
  end
  def primary_key(d, key) do
    %{d | primary_key: key}
  end

  def references(%{references: references} = d, r) when is_list(r) do
    %{d | references: references ++ r}
  end
  def references(d, r) do
    references(d, [r])
  end

  def if_not_exists(d) do
    %{d | if_not_exists: true}
  end

  def temporary(d) do
    %{d | temporary: true}
  end

  def unlogged(d) do
    %{d | unlogged: true}
  end

  def inherits(%{inherits: inherits} = d, tables) when is_list(tables) do
    %{d | inherits: inherits ++ tables}
  end
  def inherits(d, table) do
    inherits(d, [table])
  end

  def tablespace(d, name) do
    %{d | tablespace: name}
  end

  def on_commit(d, type) when type in [:preserve_rows, :delete_rows, :drop] do
    %{d | on_commit: type}
  end

  defimpl Sonata.Builder.Constraint do
    def constraint(%{constraints: constraints} = d, name, constraint) do
      %{d | constraints: constraints ++ [{name, constraint}]}
    end
  end

  defimpl Sonata.Builder.Check do
    def check(%{checks: checks} = d, name, expr) do
      check = %Sonata.Definition.Check{
        name: name,
        expr: expr,
      }
      %{d | checks: [check | checks]}
    end
  end
end

defimpl Sonata.Postgres, for: Sonata.CreateTable do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{add_columns: columns, table: table} = ct, opts, idx) do
    opts = Map.put(opts, :params, false)

    {columns, params, idx} = Utils.list_to_sql(columns, opts, idx)

    {checks, checks_params, idx} = checks(ct.checks, opts, idx)
    {primary_key, primary_key_params, idx} = primary_key(ct.primary_key, opts, idx)
    {unique, unique_params, idx} = unique(ct.unique, opts, idx)

    {
      Utils.join([
        "CREATE TABLE ",
        Utils.escape(table),
        " (",
        Utils.join(Stream.concat([
          columns,
          checks,
          primary_key,
          unique,
        ]), ", "),
        ");"
      ], ""),

      Stream.concat([
        params,
        checks_params,
        primary_key_params,
        unique_params,
      ]),

      idx
    }
  end

  defp checks([], _, idx) do
    {[], [], idx}
  end
  defp checks(checks, opts, idx) do
    checks
    |> Enum.reverse()
    |> Utils.list_to_sql(opts, idx)
  end

  defp primary_key(nil, _, idx) do
    {[], [], idx}
  end
  defp primary_key(primary_key, opts, idx) do
    {sql, params, idx} = PG.to_sql(primary_key, opts, idx)
    {[["PRIMARY KEY ", sql]], params, idx}
  end

  defp unique([], _, idx) do
    {[], [], idx}
  end
  defp unique(unique, opts, idx) do
    Utils.list_to_sql(unique, opts, idx, &(["UNIQUE ", &1]))
  end

  def on_row(_, _) do
    nil
  end
end
