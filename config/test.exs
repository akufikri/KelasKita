import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :kelaskita, Kelaskita.Repo,
  username: "root",
  password: "",
  hostname: "localhost",
  database: "kelaskita_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :kelaskita, KelaskitaWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "z+43fye/PHb23Ug3DyyYbSFvvAvahJyt5eapA8ekucHRpq7v0Y/eFNEpmvGf27c2",
  server: false

# In test we don't send emails.
config :kelaskita, Kelaskita.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
