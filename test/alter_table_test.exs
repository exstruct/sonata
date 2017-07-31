defmodule Test.Sonata.AlterTable do
  use Test.Sonata

  test "rename column" do
    [
      seed(),

      alter_table(:my_first_table)
      |> rename_column(:first_column, :new_first_column)
    ]
    |> assert_snapshot()
  end

  test "rename table" do
    [
      seed(),
      alter_table(:my_first_table)
      |> rename_to(:my_new_first_table)
    ]
    |> assert_snapshot()
  end

  # test "alter schema" do
  #   [
  #     seed(),
  #     raw_sql("CREATE SCHEMA new_schema;"),
  #     alter_table(:my_first_table)
  #     |> set_schema(:new_schema)
  #   ]
  #   |> assert_snapshot() # does this check the table's schema?
  # end

  test "add column" do
    [
      seed(),
      alter_table(:my_first_table)
      |> add_column(:third_column, "text")
    ]
    |> assert_snapshot()
  end

  test "drop column that exists" do
    [
      seed(),
      alter_table(:my_first_table)
      |> drop_column(:first_column)
    ]
    |> assert_snapshot()
  end

  test "fail to drop column that doesn't exist" do
    [
      seed(),
      alter_table(:my_first_table)
      |> drop_column(:third_column)
    ]
    |> assert_snapshot()
  end

  test "success drop column that exists with `IF EXISTS`" do
    [
      seed(),
      alter_table(:my_first_table)
      |> drop_column(:first_column)
      |> if_exists()
    ]
    |> assert_snapshot()
  end

  test "success drop column that doesn't exist with `IF EXISTS`" do
    [
      seed(),
      alter_table(:my_first_table)
      |> drop_column(:third_column)
      |> if_exists()
    ]
    |> assert_snapshot()
  end

  # test "drop column and dependent objects (`CASCADE`)" do
  #   [
  #     seed(),
  #     create_view("child")
  #     |> add_column(
  #       column(:child_column, "text")
  #       |> as(
  #         select(:first_column)
  #         from(:my_first_table)
  #       )
  #     ),

  #     alter_table(:my_first_table)
  #     |> drop_column(:first_column)
  #     |> cascade()
  #   ]
  #   |> assert_snapshot()
  # end

  # test "restrict drop column with dependent objects (`RESTRICT`)"
  #   [
  #     seed(),
  #     create_view("child")
  #     |> add_column(
  #       column(:child_column, "text")
  #       |> as(
  #         select(:first_column)
  #         from(:my_first_table)
  #       )
  #     ),

  #     alter_table(:my_first_table)
  #     |> drop_column(:first_column)
  #     |> restrict()
  #   ]
  #   |> assert_snapshot()
  # end

  test "alter column data type" do
    [
      seed(),
      alter_table(:my_first_table)
      |> alter_column(
        column(:first_column)
        |> set_data_type("varchar")
      )
    ]
    |> assert_snapshot()
  end

  test "alter column default" do
    [
      seed(),
      alter_table(:my_first_table)
      |> alter_column(
        column(:first_column)
        |> set_default("foobar")
      )
    ]
    |> assert_snapshot()
  end

  test "remove column default" do
    [
      create_table(:my_first_table)
      |> add_column([
        column(:first_column, "text")
        |> default("foobar")
      ]),

      alter_table(:my_first_table)
      |> alter_column(
        column(:first_column)
        |> drop_default()
      )
    ]
    |> assert_snapshot()
  end

  test "set column not_null" do
    [
      seed(),
      alter_table(:my_first_table)
      |> alter_column(
        column(:first_column)
        |> set_not_null()
      )
    ]
    |> assert_snapshot()
  end

  test "drop column not_null" do
    [
      create_table(:my_first_table)
      |> add_column([
        column(:first_column, "text")
        |> not_null()
      ]),

      alter_table(:my_first_table)
      |> alter_column(
        column(:first_column)
        |> drop_not_null()
      )
    ]
    |> assert_snapshot()
  end

  # test "ALTER COLUMN column SET STATISTICS integer" do
  # end

  # test "ALTER [ COLUMN ] column SET ( attribute_option = value [, ... ] )" do
  # end

  # test "ALTER [ COLUMN ] column RESET ( attribute_option [, ... ] )" do
  # end

  # test "ALTER [ COLUMN ] column SET STORAGE { PLAIN | EXTERNAL | EXTENDED | MAIN }" do
  # end

  def seed() do
    create_table(:my_first_table)
    |> add_column(:first_column, "text")
    |> add_column(:second_column, "integer")
  end
end
