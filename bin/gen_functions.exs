functions = "functions.csv"
  |> File.stream!()
  |> CSV.decode!(headers: true)

str = quote do
  defmodule Sonata.Function do
    unquote_splicing(Enum.flat_map(functions, fn(%{
      "name" => name,
      "arity" => arity,
      "description" => description,
    }) ->
      arity = String.to_integer(arity)
      fun = String.to_atom(name)
      args = Macro.generate_arguments(arity, nil)
      quote do
        @doc unquote(description)
        def unquote(fun)(unquote_splicing(args)) do
          %Sonata.Expr.Call{name: unquote(name), arguments: unquote(args)}
        end
      end
      |> elem(2)
    end))
  end
end
|> Macro.to_string()

File.write!("lib/sonata/function.ex", str)
