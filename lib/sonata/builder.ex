defmodule Sonata.Builder do
  defprotocol Check do
    def check(struct, name, check)
  end

  defprotocol Column do
    def column(struct, type)
  end

  defprotocol Constraint do
    def constraint(struct, name, constraint)
  end

  defdelegate check(struct, name \\ nil, check), to: Check
  defdelegate column(struct, type), to: Column
  defdelegate constraint(struct, name, constraint), to: Constraint
end
