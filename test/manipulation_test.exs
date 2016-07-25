defmodule Test.Sonata.Manipulation do
  use ExUnit.Case

  test "insert" do
    insert_into("users", {"name", "birthday"})
    |> values({"Joe", "1960"})
    |> values([
      {"Mike", "1961"},
      {"Robert", "1962"}
    ])
    |> on_conflict() # TODO
  end

  test "update" do
    update("users")
    |> set(eql("name", "Joe"))
  end

  test "delete" do
    delete_from("users")
  end
end
