defmodule Sonata.OrderBy do
  defstruct [query: nil,
             order_by: []]

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

defimpl Sonata.Postgres, for: Sonata.OrderBy do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{query: query, order_by: e}, opts, idx) do
    {query, query_params, idx} = PG.to_sql(query, opts, idx)
    {e, e_params, idx} = Utils.columns(e, opts, idx)

    {
      [query, " ORDER BY ", e],
      Stream.concat(query_params, e_params),
      idx
    }
  end

  def on_row(_, _) do
    nil
  end
end
