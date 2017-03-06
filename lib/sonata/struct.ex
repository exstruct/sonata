defmodule Sonata.StructBuilder do
  @root_macros [table: 2, relation: 2]

  defmacro __using__(_) do
    quote do
      import Sonata.Combination.Builder
      import Sonata.Manipulation.Builder
      import Sonata.Misc.Builder
      import Sonata.Query.Builder
      alias Sonata.Query.Builder, as: Query
      import unquote(__MODULE__), only: unquote(@root_macros)

      @table nil
      Module.register_attribute(__MODULE__, :columns, accumulate: true)
      Module.register_attribute(__MODULE__, :relations, accumulate: true)

      @before_compile unquote(__MODULE__)

      defp __setup_relation__(struct) do
        struct
      end
      defoverridable [__setup_relation__: 1]
    end
  end

  @doc """

  """

  defmacro table(name, [do: block]) do
    name_s = name_to_string(name)
    quote do
      @table unquote(name_s)
      def table do
        unquote(name_s)
      end

      def create_table do
        Sonata.CreateTable.Builder.create_table(unquote(name_s))
      end
      defoverridable [create_table: 0]

      import Sonata.Query.Builder, only: []
      import unquote(__MODULE__), only: [column: 2]
      unquote(block)
      import Sonata.Query.Builder
      import unquote(__MODULE__), only: unquote(@root_macros)
    end
  end

  @doc """

  """

  defmacro column(name, [do: block]) do
    name_a = name_to_atom(name)
    name_s = name_to_string(name)
    quote do
      @columns unquote(name_a)
      def column(query, name) when name in [unquote(name_a), unquote(name_s)] do
        query
        |> Sonata.Query.Builder.column(unquote(name_s))
      end

      defp unquote(define_column(name_s))() do
        var!(column_name) = unquote(name_a)
        _ = var!(column_name)
        var!(column) = %Sonata.Definition.Column{name: unquote(name_s)}
        import unquote(__MODULE__), only: [type: 1, primary_key: 0, default: 1, references: 1]
        unquote(block)
        import unquote(__MODULE__), only: [column: 2]
        var!(column)
      end

      def create_table do
        tab = super()
        Sonata.CreateTable.Builder.add_column(tab, unquote(define_column(name_s))())
      end
      defoverridable [create_table: 0]
    end
  end

  @doc """

  """

  defmacro type(type) do
    quote do
      var!(column) = %{var!(column) | type: unquote(type)}
    end
  end

  @doc """

  """

  defmacro primary_key() do
    module = __CALLER__.module
    [column | _] = Module.get_attribute(module, :columns)
    Module.put_attribute(module, :primary_key, column)
    quote do
      var!(column) = %{var!(column) | primary_key: true}
    end
  end

  @doc """

  """

  defmacro default(value) do
    quote do
      var!(column) = %{var!(column) | default: unquote(value)}
    end
  end

  @doc """

  """

  defmacro not_null() do
    quote do
      var!(column) = %{var!(column) | not_null: true}
    end
  end

  @doc """

  """

  defmacro references(table) do
    case table do
      _ when is_binary(table) ->
        quote do
          var!(column) = Sonata.Definition.Column.reference(var!(column), unquote(table))
        end
      {:__aliases__, _, _} ->
        quote do
          {type, column} = unquote(table).__primary_key__
          table = unquote(table).table
          var!(column) = %{var!(column) | type: type, reference: {column, table}}
        end
    end
  end

  @doc """

  """

  defmacro relation(fun, args), do: relation_ast(fun, args)

  defmacro computed(fun, args), do: relation_ast(fun, args)

  defp relation_ast(fun, [do: block]) do
    name = name_to_atom(fun)
    quote do
      @relations unquote(name)
      def unquote(fun), do: unquote(block)
      defp __setup_relation__(struct) do
        super(%{struct | unquote(name) => unquote(name)(struct)})
      end
      defoverridable [__setup_relation__: 1]
    end
  end

  defp name_to_string({name, _, _}) when is_atom(name) do
    name_to_string(name)
  end
  defp name_to_string(name) when is_atom(name) do
    to_string(name)
  end
  defp name_to_string(name) when is_binary(name) do
    name
  end

  defp name_to_atom({name, _, _}) when is_atom(name) do
    name
  end
  defp name_to_atom(name) when is_atom(name) do
    name
  end
  defp name_to_atom(name) when is_binary(name) do
    String.to_atom(name)
  end

  defmacro __before_compile__(env) do
    pk = Module.get_attribute(env.module, :primary_key)
    quote do
      if @table do
        defstruct @columns ++ @relations ++ [__meta__: nil]

        def __primary_key__ do
          %{type: type} = unquote(define_column(pk))()
          {type, unquote(to_string(pk))}
        end

        @__input_columns Enum.map(@columns, &{&1, &1}) ++ Enum.map(@columns, &{&1, to_string(&1)})
        def __from_row__(row, meta \\ %{}) do
          Enum.reduce(@__input_columns, %__MODULE__{__meta__: meta}, fn({to, from}, acc) ->
            # TODO support load function for individual columns
            case Map.fetch(row, from) do
              :error ->
                acc
              {:ok, value} ->
                Map.put(acc, to, value)
            end
          end)
          |> __setup_relation__()
        end
      end
    end
  end

  defp define_column(column) do
    :"__define_column__#{column}"
  end
end
