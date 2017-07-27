defmodule Sonata.Builder do
  defprotocol Constraint do
    def constraint(struct, name, constraint)
  end
end
