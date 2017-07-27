defmodule Sonata.Definition.Column do
  defstruct [name: nil,
             type: nil,
             check: nil,
             reference: nil,
             primary_key: nil,
             constraint: nil,
             unique: nil,
             default: nil,
             null: true,
             collation: nil,
             match: nil,
             on_delete: nil,
             on_update: nil,
             deferrable: false,
             initially: nil,]

  require Sonata.Expr

  def check_op(%{name: col} = column, name \\ nil, op, rhs) do
    col = Sonata.Expr.column(col)
    expr = Sonata.Expr.op(col, op, rhs)
    Sonata.Builder.Check.check(column, name, expr)
  end

  def primary_key(column) do
    %{column | primary_key: true}
  end

  def references(column, table, columns \\ nil)
  def references(column, table, columns) when is_list(columns) do
    columns = Sonata.Expr.column_list(columns)
    references(column, table, columns)
  end
  def references(column, table, col)
    when is_atom(col) and not is_nil(col)
      or is_binary(col) do
    references(column, table, [col])
  end
  def references(column, table, columns) do
    %{column | reference: {table, columns}}
  end

  def constraint(column, name, expr) do
    %{column | constraint: {name, expr}}
  end

  def unique(column) do
    %{column | unique: true}
  end

  def null(column) do
    %{column | null: true}
  end

  def not_null(column) do
    %{column | null: false}
  end

  def default(column, default) do
    %{column | default: default}
  end

  def collate(column, collation) do
    %{column | collation: collation}
  end

  # TODO
  def like(column, _source_table, _opts) do
    column
  end

  def match_full(column) do
    %{column | match: :full}
  end

  def match_partial(column) do
    %{column | match: :partial}
  end

  def match_simple(column) do
    %{column | match: :simple}
  end

  def on_delete(column, expr) do
    %{column | on_delete: expr}
  end

  def on_update(column, expr) do
    %{column | on_update: expr}
  end

  def deferrable(column) do
    %{column | deferrable: true}
  end

  def not_deferrable(column) do
    %{column | deferrable: false}
  end

  def initially_deferred(column) do
    %{column | initially: :deferred}
  end

  def initially_immediate(column) do
    %{column | initially: :immediate}
  end

  defimpl Sonata.Builder.Check do
    alias Sonata.Definition.Check

    def check(column, name, expr) do
      merge_check(column, %Check{
        name: name,
        expr: expr,
      })
    end

    defp merge_check(%{check: nil} = column, check) do
      %{column | check: check}
    end
    defp merge_check(%{
      check: %{
        expr: e,
        name: n,
        inherit: i
      }
    } = column, %{
      inherit: i,
      expr: expr,
    } = check) do
      %{column | check: %Check{
        name: n,
        expr: Sonata.Expr.and(e, expr),
        inherit: i,
      }}
    end
  end
end

defimpl Sonata.Builder.Column, for: [Atom, Bitstring] do
  def column(name, type) do
    %Sonata.Definition.Column{name: name, type: type}
  end
end

defimpl Sonata.Postgres, for: Sonata.Definition.Column do
  alias Sonata.Postgres, as: PG
  alias PG.Utils

  def to_sql(column, opts, idx) do
    {name, name_params, idx} = name(column.name, opts, idx)
    {type, type_params, idx} = type(column.type, opts, idx)
    {check, check_params, idx} = check(column.check, opts, idx)
    {reference, reference_params, idx} = reference(column.reference, opts, idx)
    {primary_key, primary_key_params, idx} = primary_key(column.primary_key, opts, idx)
    {constraint, constraint_params, idx} = constraint(column.constraint, opts, idx)
    {unique, unique_params, idx} = unique(column.unique, opts, idx)
    {default, default_params, idx} = default(column.default, opts, idx)
    {null, null_params, idx} = null(column.null, opts, idx)

    {
      Utils.join([
        name,
        type,
        check,
        reference,
        primary_key,
        constraint,
        unique,
        default,
        null
      ], " "),

      Stream.concat([
        name_params,
        type_params,
        check_params,
        reference_params,
        primary_key_params,
        constraint_params,
        unique_params,
        default_params,
        null_params
      ]),

      idx
    }
  end

  def on_row(_, _) do
    nil
  end

  defp name(nil, _, idx) do
    {nil, [], idx}
  end
  defp name(name, _, idx) do
    {Utils.escape(name), [], idx}
  end

  defp type(nil, _, idx) do
    {nil, [], idx}
  end
  defp type(type, _, idx) do
    [type | _] = type |> to_string() |> String.split(" ")
    {type, [], idx}
  end

  defp check(nil, _, idx) do
    {nil, [], idx}
  end
  defp check(check, opts, idx) do
    PG.to_sql(check, opts, idx)
  end

  defp reference(nil, _, idx) do
    {nil, [], idx}
  end
  defp reference({table, nil}, _, idx) do
    {["REFERENCES ", Utils.escape(table)], [], idx}
  end
  defp reference({table, columns}, opts, idx) do
    {columns, params, idx} = PG.to_sql(columns, opts, idx)
    {["REFERENCES ", Utils.escape(table), " ", columns], params, idx}
  end

  defp primary_key(true, _, idx) do
    {"PRIMARY KEY", [], idx}
  end
  defp primary_key(_, _, idx) do
    {nil, [], idx}
  end

  defp constraint(nil, _, idx) do
    {nil, [], idx}
  end
  defp constraint(constraint, opts, idx) do
    {constraint, params, idx} = PG.to_sql(constraint, opts, idx)
    {["CONSTRAINT ", constraint], params, idx}
  end

  defp unique(true, _, idx) do
    {"UNIQUE", [], idx}
  end
  defp unique(_, _, idx) do
    {nil, [], idx}
  end

  defp null(false, _, idx) do
    {"NOT NULL", [], idx}
  end
  defp null(_, _, idx) do
    {nil, [], idx}
  end

  defp default(nil, _, idx) do
    {nil, [], idx}
  end
  defp default(default, opts, idx) do
    {default, params, idx} = PG.to_sql(default, opts, idx)
    {["DEFAULT ", default], params, idx}
  end
end
