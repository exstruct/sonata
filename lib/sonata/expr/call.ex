defmodule Sonata.Expr.Call do
  defstruct [:name, :arguments]
end

defimpl Sonata.Postgres, for: Sonata.Expr.Call do
  def to_sql(%{name: fun, arguments: arguments}, opts, idx) do
    {arguments, {params, idx}} = Enum.map_reduce(arguments, {[], idx}, fn(arg, {params, idx}) ->
      {arg, p, idx} = Sonata.Postgres.to_sql(arg, opts, idx)
      {arg, {Stream.concat(params, p), idx}}
    end)

    {[to_string(fun), "(", Sonata.Postgres.Utils.join(arguments, ", "), ")"], params, idx}
  end

  def on_row(_, _) do
    nil
  end
end
