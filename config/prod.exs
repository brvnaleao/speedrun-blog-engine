import Config

config :speedrun_blog_engine_web, SpeedrunBlogEngineWeb.Endpoint,
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"


config :logger, level: :info
