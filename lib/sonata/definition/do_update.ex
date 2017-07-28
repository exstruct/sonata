defmodule Sonata.Manipulation.DoUpdate do
  defstruct [sets: [], where: nil]
end

defimpl Sonata.Postgres, for: Sonata.Manipulation.DoUpdate do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{sets: sets}, opts, idx) do
    {sets, s_params, idx} = sets(sets, opts, idx)

    {
      Utils.join([
        "DO UPDATE",
        sets,
      ], " "),
      Stream.concat([
        s_params
      ]),
      idx
    }
  end

  def on_row(_, _) do
    nil
  end

  defp sets([], _, idx) do
    {nil, [], idx}
  end
  defp sets(sets, opts, idx) do
    opts = Map.put(opts, :parens, false)
    {sql, params, idx} = Utils.list_to_sql(sets, opts, idx)
    {["SET ", Utils.join(sql, ", ")], params, idx}
  end
end
