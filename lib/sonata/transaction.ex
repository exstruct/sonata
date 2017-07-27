defmodule Sonata.Transaction do
  defstruct [statements: [],
             mode: nil]

  def start_transaction(statements \\ []) do
    %__MODULE__{statements: statements}
  end

  def begin_transaction(statements \\ []) do
    %__MODULE__{statements: statements}
  end
end

defimpl Sonata.Postgres, for: Sonata.Transaction do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(%{statements: statements}, opts, idx) do
    {statements, params, idx} = Utils.list_to_sql(statements, opts, idx)
    {
      [
        "BEGIN TRANSACTION; ",
        Utils.join(statements, " "),
        " END TRANSACTION;"
      ],
      params,
      idx
    }
  end

  def on_row(_, _) do
    # TODO
    nil
  end
end
