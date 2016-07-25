defmodule Sonata.OrderBy do
  defstruct [query: nil,
             order_by: []]

  defmodule Builder do
    def order_by(%{order_by: expressions} = q, e) when is_list(e) do
      %{q | order_by: expressions ++ e}
    end
    def order_by(query, e) when is_list(e) do
      order_by(%Sonata.OrderBy{query: query}, e)
    end
    def order_by(order_by, e) do
      order_by(order_by, [e])
    end
    def order_by(order_by, e, order) when order in [:asc, :desc] do
      order_by(order_by, [{e, order}])
    end
  end
end
