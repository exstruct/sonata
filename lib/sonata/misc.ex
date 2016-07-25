defmodule Sonata.Misc do
  defmodule Call do
    defstruct [function: nil, arguments: []]
  end

  defmodule Builder do
    def call(function) do
      %Sonata.Misc.Call{function: function}
    end

    def call(function, arguments) do
      %Sonata.Misc.Call{function: function, arguments: arguments}
    end
  end
end
