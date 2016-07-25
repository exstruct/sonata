defmodule Test.Sonata.Query do
  use ExUnit.Case

  test "select" do
    ## https://www.postgresql.org/docs/9.5/static/queries-overview.html
    select()
    |> column("name")
    |> column(add(field("age"), 2))
    |> column(call("random"))
    |> from("users", "u")
  end

  test "join" do
    ## https://www.postgresql.org/docs/9.5/static/queries-table-expressions.html
  end
end
