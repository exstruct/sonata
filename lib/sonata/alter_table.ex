defmodule Sonata.AlterTable do
  defstruct [table: nil]

  def alter_table(table) do
    %__MODULE__{table: table}
  end

  def rename_column(q, old_name, new_name) do

  end

  def rename_to(q, new_table_name) do

  end

  def drop_table(q, table) do

  end

  def drop_column(q, column_name) do

  end

  def alter_column(q, column) do

  end

  # COLUMN FUNCTIONS
  def set_default(column, default) do

  end

  def drop_default(column) do

  end

  def set_data_type(column, data_type) do

  end

  def set_not_null(column) do

  end

  def drop_not_null(column) do

  end
end
