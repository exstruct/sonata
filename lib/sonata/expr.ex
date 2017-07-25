defmodule Sonata.Expr do
  defmodule Operation do
    defstruct [:operator, :rhs, :lhs]
  end

  defmodule Reference do
    defstruct [:name]
  end

  defmodule Value do
    defstruct [:value]
  end

  def unquote(:=)(lhs, rhs) do
    %Operation{operator: "=", lhs: lhs, rhs: rhs}
  end

  def unquote(:>)(lhs, rhs) do
    %Operation{operator: ">", lhs: lhs, rhs: rhs}
  end

  def unquote(:<)(lhs, rhs) do
    %Operation{operator: "<", lhs: lhs, rhs: rhs}
  end

  def unquote(:>=)(lhs, rhs) do
    %Operation{operator: ">=", lhs: lhs, rhs: rhs}
  end

  def unquote(:<=)(lhs, rhs) do
    %Operation{operator: "<=", lhs: lhs, rhs: rhs}
  end

  def unquote(:and)(lhs, rhs) do
    %Operation{operator: "AND", lhs: lhs, rhs: rhs}
  end

  def column(name) do
    %Reference{name: name}
  end

  def table(name) do
    %Reference{name: name}
  end

  def value(value) do
    %Value{value: value}
  end
end
