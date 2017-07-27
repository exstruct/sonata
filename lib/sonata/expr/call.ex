defmodule Sonata.Expr.Call do
  defstruct [:name, :arguments]
end

defimpl Sonata.Postgres, for: Sonata.Expr.Call do
  alias Sonata.Postgres.Utils

  def to_sql(%{name: fun, arguments: arguments}, opts, idx) do
    {arguments, params, idx} = Utils.list_to_sql(arguments, opts, idx)

    {[Utils.escape(fun), "(", Utils.join(arguments, ", "), ")"], params, idx}
  end

  def on_row(_, _) do
    nil
  end
end
