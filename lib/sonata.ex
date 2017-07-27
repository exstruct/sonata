defmodule Sonata do
  defmacro __using__(_) do
    quote do
      import Sonata.{
        AlterTable,
        Builder,
        Combination,
        CreateTable,
        DropTable,
        Definition.Column,
        Expr,
        Function,
        Manipulation,
        OrderBy,
        Query,
        Transaction,
      }
    end
  end

  def to_sql(statement, opts \\ %{}) do
    opts = Enum.into(opts, %{})
    {sql, params, _idx} = Sonata.Postgres.to_sql(statement, opts, 1)
    on_row = Sonata.Postgres.on_row(statement, opts)
    {sql, Enum.to_list(params), on_row}
  end
end
