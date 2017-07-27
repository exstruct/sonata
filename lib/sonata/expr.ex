defmodule Sonata.Expr do
  def call(name) do
    %__MODULE__.Call{name: name}
  end

  def call(name, arguments) do
    %__MODULE__.Call{name: name, arguments: arguments}
  end

  def column(name) do
    %__MODULE__.Reference{name: name}
  end

  def column_list(columns) do
    %__MODULE__.ColumnList{columns: columns}
  end

  def table(name) do
    %__MODULE__.Reference{name: name}
  end

  def value(value) do
    %__MODULE__.Value{value: value}
  end
end
