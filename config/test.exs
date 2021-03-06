import Config


config :speedrun_blog_engine, SpeedrunBlogEngine.Repo,
  username: "postgres",
  password: "postgres",
  database: "speedrun_blog_engine_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :speedrun_blog_engine_web, SpeedrunBlogEngineWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
