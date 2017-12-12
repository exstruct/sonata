defmodule Sonata.StructBuilder do
  @root_macros [table: 2, relation: 2]

  defmacro __using__(_) do
    quote do
      import Sonata.Combination
      import Sonata.Manipulation
      import Sonata.Query
      import unquote(__MODULE__), only: unquote(@root_macros)

      @table nil
      Module.register_attribute(__MODULE__, :columns, accumulate: true)
      Module.register_attribute(__MODULE__, :relations, accumulate: true)
      Module.register_attribute(__MODULE__, :primary_keys, accumulate: true)

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
        Sonata.CreateTable.create_table(unquote(name_s))
      end
      defoverridable [create_table: 0]

      import Sonata.Query, only: []
      import unquote(__MODULE__), only: [column: 2]
      unquote(block)
      import Sonata.Query
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
        |> Sonata.Builder.column(unquote(name_s))
      end

      defp unquote(define_column(name_s))() do
        var!(column_name) = unquote(name_a)
        _ = var!(column_name)
        var!(column) = %Sonata.Definition.Column{name: unquote(name_s)}
        import unquote(__MODULE__), only: [type: 1, primary_key: 0, default: 1, references: 1, references: 2, not_null: 0]
        unquote(block)
        import unquote(__MODULE__), only: [column: 2]
        var!(column)
      end

      def create_table do
        tab = super()
        Sonata.CreateTable.add_column(tab, unquote(define_column(name_s))())
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
    Module.put_attribute(module, :primary_keys, column)
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
      var!(column) = %{var!(column) | null: false}
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
          [{col, type}] = unquote(table).__primary_keys__ |> :maps.to_list
          table = unquote(table).table
          var!(column) = %{var!(column) | type: type, reference: {table, col}}
        end
    end
  end

  defmacro references(table, target_column) do
    case table do
      _ when is_binary(table) ->
        quote do
          var!(column) = Sonata.Definition.Column.reference(var!(column), unquote(table), unquote(to_string(target_column)))
        end
      {:__aliases__, _, _} ->
        quote do
          var!(column) = case unquote(table).__primary_keys__ do
            %{unquote(to_string(target_column)) => type} ->
              table = unquote(table).table
              %{var!(column) | type: type, reference: {table, unquote(to_string(target_column))}}
            _ ->
              raise ArgumentError, unquote("Unknown target column: #{target_column}")
          end
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
    pks = Module.get_attribute(env.module, :primary_keys)
    quote do
      if @table do
        defstruct @columns ++ @relations ++ [__meta__: nil]

        def columns do
          unquote(Module.get_attribute(env.module, :columns) |> Enum.map(&to_string/1) |> Enum.reverse())
        end

        if unquote(length(pks) > 0) do
          def __primary_keys__ do
            %{unquote_splicing(Enum.map(pks, fn(col) ->
              {to_string(col), quote do
                %{type: type} = unquote(define_column(col))()
                type
              end}
            end))}
          end
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
