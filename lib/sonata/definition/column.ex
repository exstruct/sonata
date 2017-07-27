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

  defmodule Check do
    defstruct [
      name: nil,
      expr: nil,
      inherit: true,
    ]
  end

  def column(name, type) do
    %__MODULE__{name: name, type: type}
  end

  def check(column, name \\ nil, expr) do
    merge_check(column, %Check{
      name: name,
      expr: expr,
    })
  end

  def check_no_inherit(column, name \\ nil, expr) do
    merge_check(column, %Check{
      name: name,
      expr: expr,
      inherit: false,
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

  def references(column, table) do
    %{column | reference: table}
  end

  def primary_key(column) do
    %{column | primary_key: true}
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
end

defimpl Sonata.Postgres, for: Sonata.Definition.Column do
  alias Sonata.Postgres, as: PG
  import PG.Utils

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
      join([
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
    {to_string(name), [], idx}
  end

  defp type(nil, _, idx) do
    {nil, [], idx}
  end
  defp type(type, _, idx) do
    {to_string(type), [], idx}
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
  defp reference({column, table}, _, idx) do
    {["REFERENCES ", to_string(table), " (", to_string(column), ")"], [], idx}
  end
  defp reference(table, _, idx) when is_binary(table) or is_atom(table) do
    {["REFERENCES ", to_string(table)], [], idx}
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

defimpl Sonata.Postgres, for: Sonata.Definition.Column.Check do
  alias Sonata.Postgres, as: PG
  import PG.Utils

  def to_sql(%{name: name, expr: expr, inherit: inherit}, opts, idx) do
    {expr, params, idx} = PG.to_sql(expr, opts, idx)
    {[name(name), "CHECK ", expr], params, idx}
  end

  defp name(nil) do
    ""
  end
  defp name(name) do
    # TODO escape
    ["CONSTRAINT ", name, " "]
  end

  def on_row(_, _) do
    nil
  end
end
