defmodule Sonata.Expr do
  defmodule Operation do
    defstruct [:operator, :rhs, :lhs]
  end

  defmodule Reference do
    defstruct [:name]
  end

  def unquote(:=)(lhs, rhs) do
    %Operation{operator: "=", lhs: lhs, rhs: rhs}
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
end
