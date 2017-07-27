use Mix.Config

if Mix.env === :test do
  config :sonata, Test.Sonata.Repo,
    adapter: Ecto.Adapters.Postgres,
    pool: Ecto.Adapters.SQL.Sandbox,
    url: {:system, "DATABASE_URL"},
    loggers: []
end
