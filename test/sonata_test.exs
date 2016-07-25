defmodule SonataTest do
  use ExUnit.Case

  test "create table" do
    ## https://www.postgresql.org/docs/9.6/static/ddl-basics.html
    ## https://www.postgresql.org/docs/9.6/static/ddl-default.html
    ## https://www.postgresql.org/docs/9.6/static/ddl-constraints.html
    create_table("users")
    |> field("id", [
          type("text"),
          unique,
          primary_key
        ])
    |> field("name", [
          type("text"),
          not_null
        ])
        |> field("age", &(
          &1
          |> type("integer")
          |> default(0)
          |> check(gte("age", 0))
        ))
        |> check(lte("age", 120))

    # constraint("name", unique)

    # unique("field")
    # unique(["field1", "field2"])

    # primary_key("field")
    # primary_key(["field1", "field2"])

    # references("organizations")
    # references("organizations", "id")
    # references("organizations") |> on_delete_cascade()
  end

  test "alter" do
    ## https://www.postgresql.org/docs/9.6/static/ddl-alter.html
    alter_table("users")
    |> add_column("birthday", [
          type("timestamp")
        ])
    |> drop_column("age")

  end

  test "priviledge" do
    ## https://www.postgresql.org/docs/9.6/static/ddl-priv.html

    grant("users", [update])
    |> to("joe")

    revoke("users", ["ALL"])
    |> to("joe")
  end

  test "inherits" do
    ## https://www.postgresql.org/docs/9.6/static/ddl-inherit.html
  end

  test "drop table" do
    drop_table("users")
  end

  test "select" do
    select(["*"])
    |> from("users")
    |> where(eq("name", 3))
  end
end
