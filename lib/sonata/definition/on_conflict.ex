defmodule Sonata.Manipulation.OnConflict do
  defstruct [:target, :action]
end

defimpl Sonata.Postgres, for: Sonata.Manipulation.OnConflict do
  alias Sonata.Postgres, as: PG

  def to_sql(%{target: target, action: action}, opts, idx) do
    {target, t_params, idx} = PG.to_sql(target, opts, idx)
    {action, a_params, idx} = PG.to_sql(action, opts, idx)
    {[
      "ON CONFLICT ",
      target,
      " ",
      action,
    ], Stream.concat(t_params, a_params), idx}
  end
end
