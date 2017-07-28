defmodule Test.Sonata.Expr do
  use Test.Sonata

  # test "AND" do
  #   [
  #     seed([{"foo", 1}, {"foo", 2}, {"foo", 3}]),
  #     select()
  #     |> from(:my_first_table)
  #     |> where(Expr.and({:first_column, :=, "foo"}, {:second_column, :>, 1}))
  #   ]
  # end

  test "BETWEEN" do
    [
      seed([{"foo", 2}, {"bar", 3}, {"baz", 4}]),
      select()
      |> from(:my_first_table)
      |> where(:second_column |> between(2, 4))
    ]
    |> assert_snapshot()
  end

  test "IS_DISTINCT_FROM" do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "text"),

      insert_into(:my_first_table)
      |> fields([:first_column, :second_column])
      |> values([{"foo", "foo"}, {"bar", "foo"}, {"bar", "bar"}]),

      select()
      |> from(:my_first_table)
      |> where(:first_column |> is_distinct_from(:second_column))
    ]
    |> assert_snapshot()
  end

  test "IS_NOT_DISTINCT_FROM" do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "text"),

      insert_into(:my_first_table)
      |> fields([:first_column, :second_column])
      |> values([{"foo", "foo"}, {"bar", "foo"}, {"bar", "bar"}]),

      select()
      |> from(:my_first_table)
      |> where(:first_column |> is_not_distinct_from(:second_column))
    ]
    |> assert_snapshot()
  end

  test "IS_NULL" do
    [
      seed([{"foo", 1}, {"bar", nil}]),
      select()
      |> from(:my_first_table)
      |> where(:second_column |> is_null)
    ]
    |> assert_snapshot()
  end

  test "IS_NOT_NULL" do
    [
      seed([{"foo", 1}, {"bar", nil}]),
      select()
      |> from(:my_first_table)
      |> where(:second_column |> is_not_null)
    ]
    |> assert_snapshot()
  end

  test "IS_TRUE" do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "bool"),

      insert_into(:my_first_table)
      |> fields([:first_column, :second_column])
      |> values([{"foo", true}, {"bar", false}, {"baz", nil}]),

      select()
      |> from(:my_first_table)
      |> where(:second_column |> is_true)
    ]
    |> assert_snapshot()
  end

  test "IS_NOT_TRUE" do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "bool"),

      insert_into(:my_first_table)
      |> fields([:first_column, :second_column])
      |> values([{"foo", true}, {"bar", false}, {"baz", nil}]),

      select()
      |> from(:my_first_table)
      |> where(:second_column |> is_not_true)
    ]
    |> assert_snapshot()
  end

  test "IS_FALSE" do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "bool"),

      insert_into(:my_first_table)
      |> fields([:first_column, :second_column])
      |> values([{"foo", true}, {"bar", false}, {"baz", nil}]),

      select()
      |> from(:my_first_table)
      |> where(:second_column |> is_false)
    ]
    |> assert_snapshot()
  end

  test "IS_NOT_FALSE" do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "bool"),

      insert_into(:my_first_table)
      |> fields([:first_column, :second_column])
      |> values([{"foo", true}, {"bar", false}, {"baz", nil}]),

      select()
      |> from(:my_first_table)
      |> where(:second_column |> is_not_false)
    ]
    |> assert_snapshot()
  end

  # test "IS_UNKNOWN" do
  #   [
  #     seed(),
  #     select()
  #     |> from(:my_first_table)
  #     |> where(is_unknown())
  #   ]
  # end

  # test "IS_NOT_UNKNOWN" do
  #   [
  #     seed(),
  #     select()
  #     |> from(:my_first_table)
  #     |> where(is_not_unknown())
  #   ]
  # end

  test "LIKE" do
    [
      seed([{"foo", 1}, {"foobar", 2}, {"FOOBAR", 3}]),
      select()
      |> from(:my_first_table)
      |> where(:first_column |> like("foo"))
    ]
    |> assert_snapshot()
  end

  test "NOT_LIKE" do
    [
      seed([{"foo", 1}, {"foobar", 2}, {"FOOBAR", 3}]),
      select()
      |> from(:my_first_table)
      |> where(:first_column |> not_like("foo"))
    ]
    |> assert_snapshot()
  end

  test "ILIKE" do
    [
      seed([{"foo", 1}, {"foobar", 2}, {"FOOBAR", 3}]),
      select()
      |> from(:my_first_table)
      |> where(:first_column |> ilike("foo"))
    ]
    |> assert_snapshot()
  end

  test "NOT_ILIKE" do
    [
      seed([{"foobar", 1}, {"FOOBAR", 2}, {"BAZ", 3}]),
      select()
      |> from(:my_first_table)
      |> where(:first_column |> not_ilike("foo"))
    ]
    |> assert_snapshot()
  end

  test "SIMILAR_TO" do
    [
      seed([{"foobar", 1}, {"FOOBAR", 2}, {"BAZ", 3}]),
      select()
      |> from(:my_first_table)
      |> where(:first_column |> similar_to("f"))
    ]
    |> assert_snapshot()
  end

  test "NOT_SIMILAR_TO" do
    [
      seed([{"foobar", 1}, {"FOOBAR", 2}, {"BAZ", 3}]),
      select()
      |> from(:my_first_table)
      |> where(:first_column |> not_similar_to("b"))
    ]
    |> assert_snapshot()
  end

  def seed() do
    seed([{"foo", 1}, {"bar", 2}, {"baz", 3}])
  end

  def seed(values) do
    [
      create_table(:my_first_table)
      |> add_column(:first_column, "text")
      |> add_column(:second_column, "integer"),

      insert_into(:my_first_table)
      |> fields([:first_column, :second_column])
      |> values(values),
    ]
  end
end
