defmodule Sonata.Keyword do
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
