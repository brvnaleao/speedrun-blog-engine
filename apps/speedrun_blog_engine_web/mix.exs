defmodule SpeedrunBlogEngineWeb.MixProject do
  use Mix.Project

  def project do
    [
      app: :speedrun_blog_engine_web,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.11",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  def application do
    [
      mod: {SpeedrunBlogEngineWeb.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:phoenix, "~> 1.5.8"},
      {:phoenix_ecto, "~> 4.0"},
      {:telemetry_metrics, "~> 0.4"},
      {:telemetry_poller, "~> 0.4"},
      {:speedrun_blog_engine, in_umbrella: true},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"}
    ]
  end


  defp aliases do
    [
      setup: ["deps.get"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]
    ]
  end
end
