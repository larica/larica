use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :larica, Larica.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :larica, sql_sandbox: true

# Configure your database
config :larica, Larica.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "larica_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
