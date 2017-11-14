defmodule Test.Sonata.DropTable do
  use Test.Sonata

  # test "should drop table" do
  #   [
  #     create_table(:my_first_table)
  #     |> add_column(:first_column, "text")
  #     |> add_column(:second_column, "integer"),

  #     drop_table(:my_first_table),
  #   ]
  #   |> assert_sql_error("""
  #   SELECT * FROM my_first_table
  #   """, :undefined_table)
  # end

  # test "should successfully drop table, whether it exists or not, pt.1" do
  #   drop_table(:doesnt_exist)
  #   |> if_exists()
  #   |> assert_snapshot()
  # end

  # test "should successfully drop table, whether it exists or not, pt.2" do
  #   [
  #     create_table(:exists)
  #     |> add_column(:first_column, "text"),

  #     drop_table(:exists)
  #     |> if_exists()
  #   ]
  #   |> assert_snapshot()
  # end

  # test "should fail to drop table" do
  #   drop_table(:doesnt_exist)
  #   |> assert_sql_error(:undefined_table)
  # end

  # @tag :pending
  # test "should drop table, and dependent objects (view)" do
  #   [
  #     create_table("parent")
  #     |> add_column(:parent_column, "text"),

  #     create_view("child")
  #     |> add_column(
  #       column(:child_column, "text")
  #       |> as(
  #         select(:parent_column)
  #         from("parent")
  #       )
  #     ),

  #     drop_table("my_first_table")
  #     |> cascade(),
  #   ]
  #   |> assert_sql_error("""
  #   SELECT * FROM child_view
  #   """, :reference_error)
  # end

  # @tag :pending
  # test "`restrict()` should prevent the drop because of dependent object" do
  #   [
  #     create_table("parent")
  #     |> add_column(:parent_column, "text"),

  #     create_view("child")
  #     |> add_column(
  #       column(:child_column, "text")
  #       |> as(
  #         select(:parent_column)
  #         from("parent")
  #       )
  #     ),

  #     drop_table("my_first_table")
  #     |> restrict(),
  #   ]
  #   |> assert_snapshot()
  # end
end
