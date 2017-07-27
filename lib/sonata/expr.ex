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

  defmacro op(lhs, name, rhs) do
    quote do
      Sonata.Operator.unquote(name)(unquote(lhs), unquote(rhs))
    end
  end

  alias Sonata.Expr.Operator

  keywords = [
    :and,
    :between,
    :is_distinct_from,
    :is_not_distinct_from,
    :is_null,
    :is_not_null,
    :is_true,
    :is_not_true,
    :is_false,
    :is_not_false,
    :is_unknown,
    :is_not_unknown,
    :like,
    :not_like,
    :ilike,
    :not_ilike,
    :similar_to,
    :not_similar_to,
  ]

  for keyword <- keywords do
    keyword_s = keyword |> to_string() |> String.upcase() |> String.replace("_", " ")
    def unquote(keyword)(lhs, rhs) do
      %Operator{operator: unquote(keyword_s), lhs: lhs, rhs: rhs}
    end
  end

  def not(rhs) do
    %Sonata.Expr.UnaryOperator{operator: "NOT", rhs: rhs}
  end
end
