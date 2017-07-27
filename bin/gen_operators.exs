operators = "operators.csv"
  |> File.stream!()
  |> CSV.decode!(headers: true)
  |> Stream.map(fn(%{
    "name" => name,
  }) ->
    fun = String.to_atom(name)
    """
      def unquote(#{inspect(fun)})(lhs, rhs) do
        %Sonata.Expr.Operator{operator: #{inspect(name)}, lhs: lhs, rhs: rhs}
      end
    """
  end)

str = """
defmodule Sonata.Operator do
#{Enum.join(operators, "\n")}end
"""

File.write!("lib/sonata/operator.ex", str)
