defmodule Sonata.Query do
  defstruct [columns: [],
             from: nil,
             joins: [],
             where: nil,
             group_by: [],
             having: nil,
             distinct: [],
             order_by: [],
             limit: nil,
             offset: nil,
             struct: nil]

  defmodule Value do
    defstruct [:value, :as]
  end

  defmodule Builder do
    def select() do
      %Sonata.Query{}
    end

    def select(columns) do
      select()
      |> column(columns)
    end

    def distinct(q) do
      %{q | distinct: true}
    end
    def distinct(%{distinct: true} = q, d) when is_list(d) do
      %{q | distinct: d}
    end
    def distinct(%{distinct: distinct} = q, d) when is_list(d) do
      %{q | distinct: distinct ++ d}
    end
    def distinct(q, d) do
      distinct(q, [d])
    end

    def column(%{columns: columns} = q, c) when is_list(c) do
      %{q | columns: columns ++ c}
    end
    def column(q, c) do
      column(q, [c])
    end
    def column(q, c, alias) do
      column(q, [{c, alias}])
    end

    def value(q, value, as \\ nil) do
      value = %Sonata.Query.Value{value: value}
      cond do
        is_nil(as) ->
          column(q, value)
        true ->
          column(q, value, as)
      end
    end

    def from(q, from) do
      %{q | from: from}
    end
    def from(q, from, alias) do
      %{q | from: {from, alias}}
    end

    ## TODO add support for join
    ## def join(q) do
    ##
    ## end

    #def join() -> inner_join()
    #def inner_join()
    #def left_outer_join()
    #def right_outer_join()
    #def full_outer_join()
    #def cross_join()
    #def natural_join()

    def where(q, field, operator, value) do
      where(q, [{field, operator, value}])
    end
    def where(q = %{where: where}, [kv | _] = kvs) when is_tuple(kv) do
      where = Enum.reduce(kvs, where, fn
        ({k, v}, nil) ->
          Sonata.Expr.column(k)
          |> Sonata.Expr.=(v)
        ({k, op, v}, nil) ->
          col = Sonata.Expr.column(k)
          apply(Sonata.Expr, op, [col, v])
        ({k, v}, acc) ->
          k = Sonata.Expr.column(k)
          Sonata.Expr.and(Sonata.Expr.=(k, v), acc)
        ({k, op, v}, acc) ->
          col = Sonata.Expr.column(k)
          apply(Sonata.Expr, op, [col, v])
          |> Sonata.Expr.and(acc)
      end)
      %{q | where: where}
    end

    def group_by(%{group_by: group_by} = q, c) when is_list(c) do
      %{q | group_by: group_by ++ c}
    end
    def group_by(q, c) do
      group_by(q, [c])
    end

    def having(q, expr) do
      %{q | having: expr}
    end

    def order_by(q, expr) do
      Sonata.OrderBy.Builder.order_by(q, expr)
    end
    def order_by(q, expr, order) do
      Sonata.OrderBy.Builder.order_by(q, expr, order)
    end

    def limit(q, limit) do
      %{q | limit: limit}
    end

    def offset(q, offset) do
      %{q | offset: offset}
    end

    def into_struct(q, struct) do
      %{q | struct: struct}
    end
  end
end
