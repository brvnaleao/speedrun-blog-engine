defmodule SpeedrunBlogEngineWeb.Router do
  use SpeedrunBlogEngineWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SpeedrunBlogEngineWeb do
    pipe_through :api
  end
end
