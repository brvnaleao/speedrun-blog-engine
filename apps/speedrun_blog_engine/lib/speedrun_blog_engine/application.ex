defmodule SpeedrunBlogEngine.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      SpeedrunBlogEngine.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: SpeedrunBlogEngine.PubSub}
      # Start a worker by calling: SpeedrunBlogEngine.Worker.start_link(arg)
      # {SpeedrunBlogEngine.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: SpeedrunBlogEngine.Supervisor)
  end
end
