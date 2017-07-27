defmodule Sonata.Definition.Check do
  defstruct [
    name: nil,
    expr: nil,
    inherit: true,
  ]
end

defimpl Sonata.Postgres, for: Sonata.Definition.Check do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{name: name, expr: expr, inherit: inherit}, opts, idx) do
    {expr, params, idx} = PG.to_sql(expr, opts, idx)
    {[name(name), "CHECK ", expr], params, idx}
  end

  defp name(nil) do
    ""
  end
  defp name(name) do
    ["CONSTRAINT ", Utils.escape(name), " "]
  end

  def on_row(_, _) do
    nil
  end
end
