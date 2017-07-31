defmodule Test.Sonata.Insertion do
  use Test.Sonata

  test "should update one value in row" do
    [
      seed(),
      update(:table1)
      |> set(:label, "new store")
      |> where(:id, 1)
    ]
    |> assert_snapshot()
  end

  test "should update multiple cols in a row" do
    [
      seed(),
      update(:table1)
      |> set(%{label: "new store", description: "new awesome store"})
      |> where(:id, 1)
    ]
    |> assert_snapshot()
  end

  test "should update multiple rows, one col each" do
    [
      seed(),
      update(:table1)
      |> set(%{description: "foobar"})
    ]
    |> assert_snapshot()
  end

  test "should update multiple rows, multiple values" do
    [
      seed(),
      update(:table1)
      |> set(%{label: "foobar", description: "new description"})
    ]
    |> assert_snapshot()
  end

  test "one row, multiple values again (different interface)" do
    [
      seed(),
      update(:table1)
      |> set(:label, "foobar")
      |> set(:description, "new description")
    ]
    |> assert_snapshot()
  end

  test "update returning" do
    [
      seed(),
      update(:table1)
      |> set(:label, "foobar")
      |> returning(:label)
      |> as("label")
    ]
    |> assert_snapshot()
  end

  test "update where" do
    [
      seed(),
      update(:table1)
      |> as(:t1)
      |> set({{:t1, :label}, "new store label"})
      |> from(:table2)
      |> as(:t2)
      |> where({:t2, :id}, :=, 3)
      |> where({:t2, :table1_id}, :=, {:t1, :id})
    ]
    |> assert_snapshot()
  end

  def seed() do
    [
      create_table(:table1)
      |> add_column(:id, "integer")
      |> add_column(:label, "text")
      |> add_column(:description, "text"),

      create_table(:table2)
      |> add_column(:id, "integer")
      |> add_column(:table1_id, "integer")
      |> add_column(:some_data, "text"),

      insert_into(:table1)
      |> values([{1, "store", "awesome store"}, {2, "bridge", "tall bridge"}]),

      insert_into(:table2)
      |> values([{3, 1, "references store"}, {4, 2, "references bridge"}])
    ]
  end
end
