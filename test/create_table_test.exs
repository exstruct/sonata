defmodule Test.Sonata.CreateTable do
  use Test.Sonata

  test "my_first_table" do
    create_table("my_first_table")
    |> add_column(:first_column, "text")
    |> add_column(:second_column, "integer")
    |> assert_sql(table_info("my_first_table"))
  end

  test "products" do
    create_table("products")
    |> add_column(:product_no, "integer")
    |> add_column(:name, "text")
    |> add_column(:price, "numeric")
    |> assert_sql(table_info("products"))
  end

  test "default products" do
    create_table("products")
    |> add_column([
      column(:product_no, "integer"),
      column(:name, "text"),
      column(:price, "numeric")
      |> default(9.99),
    ])
    |> assert_sql(table_info("products"))
  end

  test "default product no" do
    create_table("products")
    |> add_column([
      column(:product_no, "integer")
      |> default(random()),
    ])
    |> assert_sql(table_info("products"))
  end

  test "products SERIAL" do
    create_table("products")
    |> add_column([
      column(:product_no, "SERIAL")
    ])
    |> assert_sql(table_info("products"))
  end

  test "products CHECK price > 0" do
    create_table("products")
    |> add_column([
      column(:product_no, "integer"),
      column(:name, "text"),
      column(:price, "numeric")
      |> check(
        op(:price > 0)
      ),
    ])
    |> assert_sql_error("""
    INSERT INTO products VALUES
    (1, 'My product', -1);
    """)
  end

  test "products named CHECK" do
    create_table("products")
    |> add_column([
      column(:product_no, "integer"),
      column(:name, "text"),
      column(:price, "numeric")
      |> check(
        "positive_price",
        op(:price > 0)
      ),
    ])
    |> assert_sql_error("""
    INSERT INTO products VALUES
    (1, 'My product', -1);
    """)
  end

  test "products CHECK operator" do
    create_table("products")
    |> add_column([
      column(:product_no, "integer"),
      column(:name, "text"),
      column(:price, "numeric")
      |> check_op(:>, 0),
    ])
    |> assert_sql_error("""
    INSERT INTO products VALUES
    (1, 'My product', -1);
    """)
  end

  test "table-wide checks" do
    create_table("products")
    |> add_column([
      column(:product_no, "integer"),
      column(:name, "text"),
      column(:price, "numeric"),
      column(:discounted_price, "numeric"),
    ])
    |> check(
      op(:price > :discounted_price)
    )
    |> check(
      "min_discount",
      op(:discounted_price > 0)
    )
    |> assert_sql_error("""
    INSERT INTO products VALUES
    (1, 'My product', 100, 400);
    """)
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
