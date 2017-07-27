defmodule Sonata.Definition.ForeignKey do
  defstruct [:columns,
             :table,
             :table_columns]

  alias Sonata.Expr

  def new(cols, table, table_cols) when length(cols) == length(table_cols) do
    %__MODULE__{
      columns: Expr.column_list(cols),
      table: table,
      table_columns: Expr.column_list(table_cols),
    }
  end
  def new(col, table, table_col)
    when is_atom(col) or is_binary(col)
     and is_atom(table_col) or is_binary(table_col) do
    new([col], table, [table_col])
  end
end

defimpl Sonata.Postgres, for: Sonata.Definition.ForeignKey do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{columns: cols, table: t, table_columns: tc}, opts, idx) do
    {cols, cols_params, idx} = PG.to_sql(cols, opts, idx)
    {tc, tc_params, idx} = PG.to_sql(tc, opts, idx)
    {
      Utils.join([
        "FOREIGN KEY",
        cols,
        "REFERENCES",
        Utils.escape(t),
        tc
      ], " "),
      Stream.concat(cols_params, tc_params),
      idx
    }
  end

  def on_row(_, _) do
    nil
  end
end
