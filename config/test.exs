use Mix.Config

# Configure your database
config :wallaby_issue_487, WallabyIssue487.Repo,
  username: "postgres",
  password: "postgres",
  database: "wallaby_issue_487_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wallaby_issue_487, WallabyIssue487Web.Endpoint,
  http: [port: 4002],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

config :wallaby_issue_487, :sql_sandbox, true

config :wallaby,
  driver: Wallaby.Experimental.Chrome
