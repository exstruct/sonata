defmodule Sonata.Expr do
  def call(name) do
    %__MODULE__.Call{name: name}
  end

  def call(name, arguments) do
    %__MODULE__.Call{name: name, arguments: arguments}
  end

  def column({table, column}) do
    %__MODULE__.Reference{table: table, column: column}
  end
  def column({table, column, as}) do
    %__MODULE__.Reference{table: table, column: column, as: as}
  end
  def column(column) do
    %__MODULE__.Reference{column: column}
  end

  def column_list(columns) do
    %__MODULE__.ColumnList{columns: columns}
  end

  def table({table, as}) do
    %__MODULE__.Reference{table: table, as: as}
  end
  def table(table) do
    %__MODULE__.Reference{table: table}
  end

  def default() do
    %__MODULE__.Default{}
  end

  defmacro op(lhs, name, rhs) when is_atom(name) do
    quote do
      Sonata.Operator.unquote(name)(unquote(lhs), unquote(rhs))
    end
  end
  defmacro op(lhs, name, rhs) do
    quote do
      apply(Sonata.Operator, unquote(name), [unquote(lhs), unquote(rhs)])
    end
  end

  defmacro op({name, _, [lhs, rhs]}) when is_atom(name) do
    quote do
      Sonata.Operator.unquote(name)(unquote(lhs), unquote(rhs))
    end
  end

  alias Sonata.Expr.{
    Operator,
    UnaryOperator,
  }

  keywords = [
    :and,
    :is_distinct_from,
    :is_not_distinct_from,
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

  def between(column, lower, upper) do
    %Operator{
      operator: "BETWEEN",
      lhs: column,
      rhs: __MODULE__.and(lower, upper),
    }
  end

  def not_between(column, lower, upper) do
    %Operator{
      operator: "NOT BETWEEN",
      lhs: column,
      rhs: __MODULE__.and(lower, upper),
    }
  end

  unary = [
    :is_null,
    :is_not_null,
    :is_true,
    :is_not_true,
    :is_false,
    :is_not_false,
    :is_unknown,
    :is_not_unknown,
  ]

  for keyword <- unary do
    keyword_s = keyword |> to_string() |> String.upcase() |> String.replace("_", " ")
    def unquote(keyword)(subject) do
      %UnaryOperator{operator: unquote(keyword_s), subject: subject}
    end
  end

  def not(subject) do
    %UnaryOperator{operator: "NOT", subject: subject, inverted: true}
  end
end
