defmodule Test.Sonata.Manipulation do
  use Test.Sonata

  test "should insert row" do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "integer"),

      insert_into(:my_first_table)
      |> fields(["second_column"])
      |> values({1})
    ]
    |> assert_sql("SELECT * FROM my_first_table")
  end

  test "should insert row without specifying columns" do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "integer"),

      insert_into(:my_first_table)
      |> values({"foo", 345})
    ]
    |> assert_sql("""
    SELECT * FROM my_first_table
    """)
  end

  test "should insert with defaults" do
    [
      create_table(:my_first_table)
      |> add_column([
        column(:first_column, "text"),
        column(:second_column, "integer")
        |> default(123)
      ]),

      insert_into(:my_first_table)
      |> fields([:first_column, :second_column])
      |> values({"foo", default()})
    ]
    |> assert_sql("""
    SELECT * FROM my_first_table where second_column = 123;
    """)
  end

  test "should insert value other than default" do
    [
      create_table(:my_first_table)
      |> add_column([
        column(:first_column, "text"),
        column(:second_column, "integer")
        |> default(123)
      ]),

      insert_into(:my_first_table)
      |> values({"foo", 456})
    ]
    |> assert_sql("""
    SELECT * FROM my_first_table where second_column = 456;
    """)
  end

  test "should return value after insert" do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "integer"),

      insert_into(:my_first_table)
      |> values({"foo", 789})
      |> returning([:first_column, {:second_column, :as_this_label}])
    ]
    |> assert_snapshot()
  end

  test "should do nothing on conflict" do
    [
      create_table(:my_first_table)
      |> add_column([
        column(:id, "serial")
        |> unique(),
        column(:value, "integer")
      ]),

      insert_into(:my_first_table)
      |> values({1, 123}),

      insert_into(:my_first_table)
      |> values({1, 456})
      |> on_conflict(
        :id,
        do_nothing()
      )
    ]
    |> assert_sql("""
    SELECT * FROM my_first_table where value = 123;
    """)
  end

  test "should update on conflict" do
    [
      create_table(:my_first_table)
      |> add_column([
        column(:id, "serial")
        |> unique(),
        column(:value, "integer")
      ]),

      insert_into(:my_first_table)
      |> values({1, 123}),

      insert_into(:my_first_table)
      |> values({1, 456})
      |> on_conflict(
        :id,
        do_update()
        |> set([
          value: 456,
        ])
      )
    ]
    |> assert_sql("""
    SELECT * FROM my_first_table where value = 123;
    """)
  end
end
