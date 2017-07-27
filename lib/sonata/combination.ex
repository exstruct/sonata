defmodule Sonata.Combination do
  defmodule Union do
    defstruct [:rhs, :lhs, :all]
  end

  defmodule Intersect do
    defstruct [:rhs, :lhs, :all]
  end

  defmodule Except do
    defstruct [:rhs, :lhs, :all]
  end

  structs = [
    union: __MODULE__.Union,
    intersect: __MODULE__.Intersect,
    except: __MODULE__.Except
  ]

  for {call, struct} <- structs do
    def unquote(call)(lhs, rhs) when is_function(rhs) do
      %unquote(struct){lhs: lhs, rhs: rhs.()}
    end
    def unquote(call)(lhs, rhs) do
      %unquote(struct){lhs: lhs, rhs: rhs}
    end
    def unquote(:"#{call}_all")(lhs, rhs) when is_function(rhs) do
      %unquote(struct){lhs: lhs, rhs: rhs.(), all: true}
    end
    def unquote(:"#{call}_all")(lhs, rhs) do
      %unquote(struct){lhs: lhs, rhs: rhs, all: true}
    end
  end
end

defimpl Sonata.Postgres, for: [Sonata.Combination.Union, Sonata.Combination.Intersect, Sonata.Combination.Except] do
  alias Sonata.Postgres, as: PG

  @command [" ", (@for |> Module.split() |> List.last() |> String.upcase), " "]

  def to_sql(%{lhs: lhs, rhs: rhs, all: all}, opts, idx) do
    {lhs, lhs_params, idx} = PG.to_sql(lhs, opts, idx)
    {rhs, rhs_params, idx} = PG.to_sql(rhs, opts, idx)
    {["(", lhs, @command, all(all), rhs, ")"], Stream.concat(lhs_params, rhs_params), idx}
  end

  # TODO look at the rhs?
  def on_row(_, _) do
    nil
  end

  defp all(true) do
    " ALL"
  end
  defp all(_) do
    ""
  end
end
