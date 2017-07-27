defmodule Sonata.Expr.ColumnList do
  defstruct columns: []
end

defimpl Sonata.Postgres, for: Sonata.Expr.ColumnList do
  alias Sonata.Postgres, as: PG

  def to_sql(%{columns: columns}, opts, idx) do
    {sql, params, idx} = PG.Utils.columns(columns, opts, idx)
    {["(", sql, ")"], params, idx}
  end

  def on_row(_, _) do
    nil
  end
end
