defmodule Sonata.AlterTable do
  defstruct [table: nil,
             add_columns: [],
             drop_columns: []]

  def alter_table(table) do
    %__MODULE__{table: table}
  end

  def rename_column(alter, old_name, new_name) do
    alter
  end

  def rename_to(alter, new_table_name) do
    alter
  end

  def drop_table(alter, table) do
    alter
  end

  def drop_column(alter, column_name) do
    alter
  end

  def alter_column(alter, column) do
    alter
  end

  # COLUMN FUNCTIONS
  def set_default(column, default) do
    column
  end

  def drop_default(column) do
    column
  end

  def set_data_type(column, data_type) do
    column
  end

  def set_not_null(column) do
    column
  end

  def drop_not_null(column) do
    column
  end
end
