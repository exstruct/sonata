defmodule Sonata.Mixfile do
  use Mix.Project

  def project do
    [app: :sonata,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: [
       "coveralls": :test,
       "coveralls.detail": :test,
       "coveralls.post": :test,
       "coveralls.html": :test,
     ],
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:csv, "~> 2.0", only: :dev},
     {:ecto, "~> 2.1.4", only: :test},
     {:excoveralls, "~> 0.7.1"},
     {:mix_test_watch, "~> 0.4.1", only: :dev},
     {:postgrex, "~> 0.13.3", only: :test},]
  end
end
