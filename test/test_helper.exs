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
    contents || %{}
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
      query!(unquote(struct))

      result = Ecto.Adapters.SQL.query!(Repo, unquote(command))
      |> postgrex_result()

      record_result(__MODULE__, result)
    end
  end

  defmacro assert_sql_error(struct, code) do
    quote do
      error = assert_raise Postgrex.Error, fn ->
        query!(unquote(struct))
      end

      assert error.postgres.code == unquote(code)

      error = Map.merge(error, %{
        connection_id: nil
      })

      record_result(__MODULE__, error)
    end
  end

  defmacro assert_sql_error(struct, command, code) do
    quote do
      query!(unquote(struct))

      error = assert_raise Postgrex.Error, fn ->
        Ecto.Adapters.SQL.query!(Repo, unquote(command))
      end

      assert error.postgres.code == unquote(code)

      error = Map.merge(error, %{
        connection_id: nil
      })

      record_result(__MODULE__, error)
    end
  end

  defmacro assert_snapshot(struct) do
    quote do
      {response, on_row} = query!(unquote(struct))
      result = response
      |> postgrex_result(on_row)

      record_result(__MODULE__, result)
    end
  end

  require Logger
  def query!(structs) when is_list(structs) do
    structs
    |> Stream.map(&query!/1)
    |> Enum.reduce({nil, nil}, fn(res, _) ->
      res
    end)
  end
  def query!(struct) do
    {sql, params, on_row} = Sonata.to_sql(struct)

    sql = :erlang.iolist_to_binary(sql)

    Logger.debug(sql)

    result = Ecto.Adapters.SQL.query!(Repo, sql, params)

    {result, on_row}
  end

  def record_result(module, result) do
    test_name = Process.get(:test_name)
    case Process.get(:snapshot) do
      nil ->
        :ok
      snapshot ->
        assert snapshot == result
    end

    send(module, {:add_snapshot, {test_name, result}})
  end

  def postgrex_result(res, on_row \\ &(&1))
  def postgrex_result(res, nil) do
    postgrex_result(res, &(&1))
  end
  def postgrex_result(%{command: command, rows: nil}, _) do
    command
  end
  def postgrex_result(%{columns: columns, rows: rows}, on_row) do
    rows
    |> Enum.map(fn(row) ->
      columns
      |> Stream.zip(row)
      |> Enum.into(%{})
      |> on_row.()
    end)
  end
end

ExUnit.start([
  exclude: [:pending]
])
