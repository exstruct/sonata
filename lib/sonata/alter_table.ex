defmodule Sonata.AlterTable do
  defstruct [table: nil,
             if_exists: nil,
             only: nil,
             rename_to: nil,
             rename_constraint: nil,
             rename_column: nil,
             to: nil,
             set_schema: nil,
             all_in_tablespace: nil,
             set_tablespace: nil,
             owned_by: nil,
             nowait: nil,

             # actions
             row_level_sec: nil,

             # colum manipulation
             add_column: {},
             add_column_constraint: nil,
             drop_column: nil,
             drop_column_if_exists: nil,
             drop_constraint: nil,
             drop_constraint_if_exists: nil,
             restrict: nil,
             cascade: nil,

             alter_column: nil,
             set_data_type: nil,
             collate: nil,
             using: nil,
           ]

  def alter_table(table) do
    %__MODULE__{table: table}
  end

  def if_exists(alter) do
    %{alter | if_exists: true}
  end

  def only(alter) do
    %{alter | only: true}
  end

  def rename_to(alter, new_table_name) do
    %{alter | rename_to: new_table_name}
  end

  def rename_constraint(alter, constraint_name) do
    %{alter | rename_constraint: constraint_name}
  end

  def rename_column(alter, column_name) do
    %{alter | rename_column: column_name}
  end
  def rename_column(alter, column_name, to) do
    %{alter | rename_column: column_name, to: to}
  end

  def to(alter, new_name) do
    %{alter | to: new_name}
  end

  def set_schema(alter, new_schema) do
    %{alter | set_schema: new_schema}
  end

  def all_in_tablespace(alter) do
    %{alter | all_in_tablespace: true}
  end

  def set_tablespace(alter, new_tablespace) do
    %{alter | set_tablespace: new_tablespace}
  end

  def owned_by(alter, role_name) do
    %{alter | owned_by: role_name}
  end

  def nowait(alter) do
    %{alter | nowait: true}
  end

  def enable_row_level_security(alter) do
    %{alter | enable_row_level_security: true}
  end

  # COLUMNS
  def add_column(alter, column_name, data_type) do
    %{alter | add_column: {column_name, data_type}}
  end
  def add_column(alter, column_name, data_type, constraint) do
    add_column(alter, column_name, data_type)
    add_column_constraint(alter, constraint)
  end

  def add_column_constraint(alter, nil) do
    alter
  end
  def add_column_constraint(alter, constraint) do
    %{alter | add_column_constraint: constraint}
  end

  def drop_column(alter, column_name) do
    %{alter | drop_column: column_name}
  end

  def if_column_exists(alter) do
    %{alter | drop_column_if_exists: true}
  end

  def drop_column_if_exists(alter, column_name) do
    %{alter | drop_column_if_exists: true}
    drop_column(alter, column_name)
  end

  def drop_constraint(alter, constraint_name) do
    %{alter | drop_constraint: constraint_name}
  end

  def if_constraint_exists(alter) do
    %{alter | drop_constraint_if_exists: true}
  end

  def drop_constraint_if_exists(alter, constraint_name) do
    %{alter | drop_constraint_if_exists: true}
    drop_constraint(alter, constraint_name)
  end

  def restrict(alter) do
    %{alter | restrict: true}
  end

  def cascade(alter) do
    %{alter | cascade: true}
  end

  def alter_column(alter, column_name) do
    %{alter | alter_column: column_name}
  end

  def set_data_type(alter, data_type) do
    %{alter | set_data_type: data_type}
  end

  def collate(alter, collate) do
    %{alter | collate: collate}
  end

  def using(alter, using) do
    %{alter | using: using}
  end
end

defimpl Sonata.Postgres, for: Sonata.AlterTable do
  alias Sonata.Postgres, as: PG
  alias PG.Utils
  import Sonata.Utils

  def to_sql(alter, opts, idx) do
    {if_exists, if_exists_params, idx} = if_exists(alter.if_exists, opts, idx)
    {only, only_params, idx} = only(alter.only, opts, idx)
    {all_in_tablespace, all_in_tablespace_params, idx} = all_in_tablespace(alter.all_in_tablespace, opts, idx)
    {table, table_params, idx} = table(alter.table, opts, idx)
    {owned_by, owned_by_params, idx} = owned_by(alter.owned_by, opts, idx)

    {rename_constraint, rename_constraint_params, idx} = rename_constraint(alter.rename_constraint, opts, idx)
    {rename_column, rename_column_params, idx} = rename_column(alter.rename_column, opts, idx)
    {to, to_params, idx} = to(alter.to, opts, idx)
    {rename_to, rename_to_params, idx} = rename_to(alter.rename_to, opts, idx)
    {set_schema, set_schema_params, idx} = set_schema(alter.set_schema, opts, idx)
    {set_tablespace, set_tablespace_params, idx} = set_tablespace(alter.set_tablespace, opts, idx)
    {nowait, nowait_params, idx} = nowait(alter.nowait, opts, idx)
    {row_level_sec, row_level_sec_params, idx} = row_level_sec(alter.row_level_sec, opts, idx)

    {add_column, add_column_params, idx} = add_column(alter.add_column, opts, idx)
    {add_column_constraint, add_column_constraint_params, idx} = add_column_constraint(alter.add_column_constraint, opts, idx)

    {drop_column, drop_column_params, idx} = drop_column(alter, opts, idx)
    {drop_constraint, drop_constraint_params, idx} = drop_constraint(alter, opts, idx)
    {restrict, restrict_params, idx} = restrict(alter.restrict, opts, idx)
    {cascade, cascade_params, idx} = cascade(alter.cascade, opts, idx)

    {alter_column, alter_column_params, idx} = alter_column(alter.alter_column, opts, idx)
    {set_data_type, set_data_type_params, idx} = set_data_type(alter.set_data_type, opts, idx)
    {collate, collate_params, idx} = collate(alter.collate, opts, idx)
    {using, using_params, idx} = using(alter.using, opts, idx)

    {
      Utils.join([
        "ALTER TABLE",
        if_exists,
        only,
        all_in_tablespace,
        table,
        owned_by,

        rename_constraint,
        rename_column,
        to,
        rename_to,
        set_schema,
        set_tablespace,
        nowait,
        row_level_sec,

        add_column,
        add_column_constraint,
        drop_column,
        drop_constraint,
        restrict,
        cascade,

        alter_column,
        set_data_type,
        collate,
        using,
        ";"
      ], " "),

      Stream.concat([
        if_exists_params,
        only_params,
        all_in_tablespace_params,
        table_params,
        owned_by_params,

        rename_constraint_params,
        rename_column_params,
        to_params,
        rename_to_params,
        set_schema_params,
        set_tablespace_params,
        nowait_params,
        row_level_sec_params,

        add_column_params,
        add_column_constraint_params,
        drop_column_params,
        drop_constraint_params,
        restrict_params,
        cascade_params,

        alter_column_params,
        set_data_type_params,
        collate_params,
        using_params,
      ]),

      idx
    }
  end

  def on_row(_, _) do
    nil
  end

  defp if_exists(if_exists, _, idx) when is_falsy?(if_exists), do: no_change(idx)
  defp if_exists(true, _, idx) do
    {"IF EXISTS", [], idx}
  end

  defp only(only, _, idx) when is_falsy?(only), do: no_change(idx)
  defp only(true, _, idx) do
    {"ONLY", [], idx}
  end

  defp all_in_tablespace(all_in_tabelspace, _, idx) when is_falsy?(all_in_tabelspace), do: no_change(idx)
  defp all_in_tablespace(true, _, idx) do
    {"ALL IN TABLESPACE", [], idx}
  end

  defp table(table, _, idx) when is_falsy?(table), do: no_change(idx)
  defp table(table, _, idx) do
    {Utils.escape(table), [], idx}
  end

  defp rename_constraint(constraint_name, _, idx) when is_falsy?(constraint_name), do: no_change(idx)
  defp rename_constraint(constraint_name, _, idx) do
    {["RENAME CONSTRAINT ", Utils.escape(constraint_name)], [], idx}
  end

  defp rename_column(column_name, _, idx) when is_falsy?(column_name), do: no_change(idx)
  defp rename_column(column_name, _, idx) do
    {["RENAME COLUMN ", Utils.escape(column_name)], [], idx}
  end

  defp to(new_name, _, idx) when is_falsy?(new_name), do: no_change(idx)
  defp to(new_name, opts, idx) do
    {new_name, params, idx} = PG.to_sql(new_name, opts, idx)
    {["TO ", new_name], params, idx}
  end

  defp rename_to(new_name, _, idx) when is_falsy?(new_name), do: no_change(idx)
  defp rename_to(new_name, opts, idx) do
    {new_name, params, idx} = PG.to_sql(new_name, opts, idx)
    {["RENAME TO ", new_name], params, idx}
  end

  defp set_schema(new_schema, _, idx) when is_falsy?(new_schema), do: no_change(idx)
  defp set_schema(new_schema, opts, idx) do
    {new_schema, params, idx} = PG.to_sql(new_schema, opts, idx)
    {["SET SCHEMA ", new_schema], params, idx}
  end

  defp owned_by(owned_by, _, idx) when is_falsy?(owned_by), do: no_change(idx)
  defp owned_by(owned_by, opts, idx) when is_binary(owned_by) do
    {owned_by, params, idx} = PG.to_sql(owned_by, opts, idx)
    {["OWNED BY ", owned_by], params, idx}
  end

  defp set_tablespace(new_tablespace, _, idx) when is_falsy?(new_tablespace), do: no_change(idx)
  defp set_tablespace(new_tablespace, opts, idx) do
    {new_tablespace, params, idx} = PG.to_sql(new_tablespace, opts, idx)
    {["SET TABLESPACE ", new_tablespace], params, idx}
  end

  defp nowait(nowait, _, idx) when is_falsy?(nowait), do: no_change(idx)
  defp nowait(true, _, idx) do
    {"NOWAIT", [], idx}
  end

  defp row_level_sec(row_level_sec, _, idx) when is_falsy?(row_level_sec), do: no_change(idx)
  defp row_level_sec(true, _, idx) do
    {"ENABLE ROW LEVEL SECURITY", [], idx}
  end

  defp add_column(changes, _, idx) when is_falsy?(changes), do: no_change(idx)
  defp add_column({column_name, data_type, _}, _, idx) do
    {["ADD COLUMN ", Utils.escape(column_name), " ", Utils.escape(data_type)], [], idx}
  end
  defp add_column({column_name, data_type}, opts, idx) do
    add_column({column_name, data_type, nil}, opts, idx)
  end

  defp add_column_constraint(constraint, _, idx) when is_falsy?(constraint), do: no_change(idx)
  defp add_column_constraint(constraint, opts, idx) do
    PG.to_sql(constraint, opts, idx)
  end

  defp drop_column(%{drop_column: drop_column}, _, idx) when is_falsy?(drop_column), do: no_change(idx)
  defp drop_column(alter, opts, idx) do
    {column_name, params, idx} = PG.to_sql(alter.drop_column, opts, idx)
    {["DROP COLUMN ", if_exists(alter.drop_column_if_exists), column_name], params, idx}
  end

  defp drop_constraint(%{drop_constraint: constraint_name}, _, idx) when is_falsy?(constraint_name), do: no_change(idx)
  defp drop_constraint(alter, opts, idx) do
    {constraint_name, params, idx} = PG.to_sql(alter.drop_constraint, opts, idx)
    {["DROP CONSTRAINT ", if_exists(alter.drop_constraint_if_exists), constraint_name], params, idx}
  end

  defp if_exists(if_exists) when is_falsy?(if_exists), do: ""
  defp if_exists(true) do
    "IF EXISTS "
  end

  defp restrict(restrict, _, idx) when is_falsy?(restrict), do: no_change(idx)
  defp restrict(true, _, idx) do
    {"RESTRICT", [], idx}
  end

  defp cascade(cascade, _, idx) when is_falsy?(cascade), do: no_change(idx)
  defp cascade(true, _, idx) do
    {"CASCADE", [], idx}
  end

  def alter_column(column_name, _, idx) when is_falsy?(column_name), do: no_change(idx)
  def alter_column(column_name, _, idx) do
    {["ALTER COLUMN ", Utils.escape(column_name)], [], idx}
  end

  defp set_data_type(data_type, _, idx) when is_falsy?(data_type), do: no_change(idx)
  defp set_data_type(data_type, _, idx) do
    {["SET DATA TYPE ", Utils.escape(data_type)], [], idx}
  end

  defp collate(collate, _, idx) when is_falsy?(collate), do: no_change(idx)
  defp collate(collate, opts, idx) do
    {collate, params, idx} = PG.to_sql(collate, opts, idx)
    {["COLLATE ", collate], params, idx}
  end

  defp using(using, _, idx) when is_falsy?(using), do: no_change(idx)
  defp using(using, opts, idx) do
    {using, params, idx} = PG.to_sql(using, opts, idx)
    {["USING ", using], params, idx}
  end
end
