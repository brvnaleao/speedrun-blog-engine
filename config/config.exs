import Config


config :speedrun_blog_engine,
  ecto_repos: [SpeedrunBlogEngine.Repo]

config :speedrun_blog_engine_web,
  ecto_repos: [SpeedrunBlogEngine.Repo],
  generators: [context_app: :speedrun_blog_engine, binary_id: true]


config :speedrun_blog_engine_web, SpeedrunBlogEngineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8z+MCessLA7dnfeDsBZ4BxozpDwSPSm6vM+zqOw7nNOxIyL+l8AhkgoRIvN5Uu+Z",
  render_errors: [view: SpeedrunBlogEngineWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: SpeedrunBlogEngine.PubSub,
  live_view: [signing_salt: "HCJ8tDge"]


config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


config :phoenix, :json_library, Jason


import_config "#{Mix.env()}.exs"
