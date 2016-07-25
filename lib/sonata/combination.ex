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

  defmodule Builder do
    structs = [
      union: Sonata.Combination.Union,
      intersect: Sonata.Combination.Intersect,
      except: Sonata.Combination.Except
    ]

    for {call, struct} <- structs do
      def unquote(call)(lhs, rhs) when is_function(rhs) do
        unquote(call)(lhs, rhs.())
      end
      def unquote(call)(lhs, rhs) do
        %unquote(struct){lhs: lhs, rhs: rhs}
      end
      def unquote(:"#{call}_all")(lhs, rhs) when is_function(rhs) do
        unquote(:"#{call}_all")(lhs, rhs.())
      end
      def unquote(:"#{call}_all")(lhs, rhs) do
        %unquote(struct){lhs: lhs, rhs: rhs, all: true}
      end
    end
  end
end
