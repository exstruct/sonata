defmodule Test.Sonata.Repo do
  use Ecto.Repo,
    otp_app: :sonata
end

alias Test.Sonata.Repo
Application.ensure_all_started(:postgrex)
Repo.start_link()
Ecto.Adapters.SQL.Sandbox.mode(Repo, :manual)

defmodule Test.Sonata do
  use ExUnit.CaseTemplate, async: true

  using do
    quote do
      use Sonata
      import unquote(__MODULE__)
    end
  end

  defp load_snapshot(path) do
    {contents, []} = Code.eval_file(path)
    contents
  rescue
    Code.LoadError ->
      %{}
  end

  setup_all context do
    %{case: name} = context

    path = "_snapshots/#{inspect(name)}.snapshot"

    snapshots = load_snapshot(path)

    File.mkdir_p!(Path.dirname(path))

    pid = spawn(__MODULE__, :__loop__, [snapshots])
    :erlang.register(name, pid)

    on_exit fn ->
      send(pid, {:close, self()})
      receive do
        {:snapshots, snapshots} ->
          File.write!(path, inspect(snapshots, limit: :infinity, pretty: true))
      end
    end

    [snapshots: snapshots]
  end

  setup context do
    %{test: test, snapshots: snapshots} = context

    Process.put(:test_name, test)
    Process.put(:snapshot, snapshots[test])

    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
  end

  def __loop__(snapshots) do
    receive do
      {:add_snapshot, {key, value}} ->
        snapshots
        |> Map.put(key, value)
        |> __loop__()
      {:close, pid} ->
        send(pid, {:snapshots, snapshots})
    end
  end

  defmacro assert_sql(struct, command) do
    quote do
      {sql, params, _on_row} = Sonata.to_sql(unquote(struct))
      sql = :erlang.iolist_to_binary(sql)

      Ecto.Adapters.SQL.query!(Repo, sql, params)

      result = Ecto.Adapters.SQL.query!(Repo, unquote(command))
      |> postgrex_result()

      record_result(__MODULE__, result)
    end
  end

  defmacro assert_snapshot(struct) do
    quote do
      {sql, params, on_row} = Sonata.to_sql(unquote(struct))
      sql = :erlang.iolist_to_binary(sql)

      result = Ecto.Adapters.SQL.query!(Repo, sql, params)
      |> postgrex_result()
      |> Enum.map(on_row)

      record_result(__MODULE__, result)
    end
  end

  def record_result(module, result) do
    test_name = Process.get(:test_name)
    case Process.get(:snapshot) do
      nil ->
        :ok
      snapshot ->
        assert result == snapshot
    end

    send(module, {:add_snapshot, {test_name, result}})
  end

  def postgrex_result(%{columns: columns, rows: rows}) do
    rows
    |> Enum.map(fn(row) ->
      columns
      |> Stream.zip(row)
      |> Enum.into(%{})
    end)
  end
end

ExUnit.start()
