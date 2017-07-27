defmodule Test.Sonata.CreateTable do
  use Test.Sonata

  test "my_first_table" do
    create_table("my_first_table")
    |> add_column("first_column", "text")
    |> add_column("second_column", "integer")
    |> assert_sql(table_info("my_first_table"))
  end

  test "products" do
    create_table("products")
    |> add_column("product_no", "integer")
    |> add_column("name", "text")
    |> add_column("price", "numeric")
    |> assert_sql(table_info("products"))
  end

  test "default products" do
    create_table("products")
    |> add_column([
      column("product_no", "integer"),
      column("name", "text"),
      column("price", "numeric")
      |> default(9.99),
    ])
    |> assert_sql(table_info("products"))
  end

  test "default product no" do
    create_table("products")
    |> add_column([
      column("product_no", "integer")
      |> default(nextval("products_product_no_seq")),
    ])
    |> assert_sql(table_info("products"))
  end

  defp table_info(name) do
    """
    SELECT
      column_name,
      data_type
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE table_name = '#{name}';
    """
  end
end
