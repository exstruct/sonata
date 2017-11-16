defmodule Sonata.Utils do
  defmacro is_falsy?(val) do
    quote do
      unquote(val) in [nil, false, "", {}, [], %{}]
    end
  end

  # HELPERS
  def no_change(idx) do
    {"", [], idx}
  end
end
