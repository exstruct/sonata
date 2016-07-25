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
                 unique: []]
    end
  end

  defmodule Builder do
    defmacro __using__(_) do
      quote do
        def add_column(%{add_columns: columns} = d, c) when is_list(c) do
          %{d | add_columns: columns ++ c}
        end
        def add_column(d, c) do
          add_column(d, [c])
        end

        def drop_column(%{drop_columns: columns} = d, c) when is_list(c) do
          %{d | drop_columns: columns ++ c}
        end
        def drop_column(d, c) do
          drop_column(d, [c])
        end

        def constraint(%{constraints: constraints} = d, name, constraint) do
          %{d | constraints: constraints ++ [{name, constraint}]}
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
      end
    end
  end
end
