use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :guess_who, GuessWho.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :guess_who, GuessWho.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "guess_who_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
