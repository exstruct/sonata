defmodule Sonata.Definition.Column do
  defstruct [name: nil,
             type: nil,
             check: nil,
             reference: nil,
             primary_key: nil,
             constraint: nil,
             unique: nil,
             default: nil,
             not_null: nil]

  defmodule Builder do
    def column(name, type) do
      %Sonata.Definition.Column{name: name, type: type}
    end

    def check(column, check) do
      %{column | check: check}
    end

    def reference(column, reference) do
      %{column | reference: reference}
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

    def not_null(column) do
      %{column | not_null: true}
    end
  end
end
