defmodule SpeedrunBlogEngine.Repo do
  use Ecto.Repo,
    otp_app: :speedrun_blog_engine,
    adapter: Ecto.Adapters.Postgres
end
