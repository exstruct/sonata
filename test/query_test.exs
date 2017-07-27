defmodule Test.Sonata.Query do
  use Test.Sonata

  test "should find all results" do
    [
      seed(),

      select()
      |> from("my_first_table")
    ]
    |> assert_snapshot()
  end

  test "should find foo row" do
    [
      seed(),

      select()
      |> from("my_first_table")
      |> where(:first_column, :=, "foo")
    ]
    |> assert_snapshot()
  end

  test "should find rows with value < 3 row" do
    [
      seed(),
      select()
      |> from("my_first_table")
      |> where(:second_column, :<, 3)
    ]
    |> assert_snapshot()
  end

  test "should reverse order" do
    [
      seed(),

      select()
      |> from("my_first_table")
      |> order_by(:second_column, :desc)
    ]
    |> assert_snapshot()
  end

  test "should return count of all rows" do
    [
      seed([{"foo", 1}, {"bar", 1}, {"baz", 2}]),

      select(
        count(:second_column)
      )
      |> from("my_first_table")
    ]
    |> assert_snapshot()
  end

  test "should return count based on a where clause" do
    [
      seed([{"foo", 1}, {"bar", 1}, {"baz", 2}]),

      select(
        count(:second_column)
        |> as(:label)
      )
      |> from("my_first_table")
      |> where([{:second_column, 1}])
    ]
    |> assert_snapshot()
  end

  test "should return count from group by clause" do
    [
      seed([{"foo", 1}, {"bar", 1}, {"baz", 2}]),

      select([
        count(:first_column),
        :first_column
      ])
      |> from("my_first_table")
      |> group_by(:second_column)
    ]
    |> assert_snapshot()
  end

  test "should return limited result" do
    [
      seed([{"foo", 1}, {"bar", 1}, {"baz", 2}]),

      select()
      |> from("my_first_table")
      |> where([{:first_column, 1}])
      |> limit(1)
    ]
    |> assert_snapshot()
  end

  test "should return joined tables" do
    [
      seed(),
      create_table("my_second_table")
      |> add_column(:label, "text")
      |> add_column(:id, "integer"),

      insert_into("my_second_table")
      |> values([{"label 1", 1}, {"label 2", 2}]),

      select()
      |> from("my_first_table")
      |> join("my_second_table", {{"my_first_table", :second_column}, :=, {"my_second_table", :id}})
      |> where({{"my_second_table", :id}, :=, 1})
    ]
    |> assert_snapshot()
  end

  def seed() do
    seed([{"foo", 1}, {"bar", 2}, {"baz", 3}])
  end

  def seed(values) do
    [
      create_table("my_first_table")
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "integer"),

      insert_into("my_first_table")
      |> fields([:first_column, :second_column])
      |> values(values),
    ]
  end
end
