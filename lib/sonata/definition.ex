defmodule Sonata.Definition do
  defmacro __using__(_) do
    quote do
      defstruct [table: nil,
                 add_columns: [],
                 drop_columns: [],
                 checks: [],
                 references: [],
                 primary_key: nil,
                 constraints: [],
                 unique: [],
                 if_not_exists: nil,
                 temporary: nil,
                 unlogged: nil,
                 inherits: [],
                 tablespace: nil,
                 on_commit: nil]

      def add_column(%{add_columns: columns} = d, c) when is_list(c) do
        %{d | add_columns: columns ++ c}
      end
      def add_column(d, c) do
        add_column(d, [c])
      end

      def add_column(d, name, type) do
        col = Sonata.Definition.Column.column(name, type)
        add_column(d, [col])
      end

      def drop_column(%{drop_columns: columns} = d, c) when is_list(c) do
        %{d | drop_columns: columns ++ c}
      end
      def drop_column(d, c) do
        drop_column(d, [c])
      end

      def unique(%{unique: unique} = d, u) do
        %{d | unique: unique ++ [u]}
      end

      def primary_key(d, key) do
        %{d | primary_key: key}
      end

      def references(%{references: references} = d, r) when is_list(r) do
        %{d | references: references ++ r}
      end
      def references(d, r) do
        references(d, [r])
      end

      def if_not_exists(d) do
        %{d | if_not_exists: true}
      end

      def temporary(d) do
        %{d | temporary: true}
      end

      def unlogged(d) do
        %{d | unlogged: true}
      end

      def inherits(%{inherits: inherits} = d, tables) when is_list(tables) do
        %{d | inherits: inherits ++ tables}
      end
      def inherits(d, table) do
        inherits(d, [table])
      end

      def tablespace(d, name) do
        %{d | tablespace: name}
      end

      def on_commit(d, type) when type in [:preserve_rows, :delete_rows, :drop] do
        %{d | on_commit: type}
      end

      defimpl Sonata.Builder.Constraint do
        def constraint(%{constraints: constraints} = d, name, constraint) do
          %{d | constraints: constraints ++ [{name, constraint}]}
        end
      end
    end
  end
end
