defmodule DungeonCrawlGames.MixProject do
  use Mix.Project

  def project do
    [
      app: :dungeon_crawl_games,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:stable_jason, git: "https://github.com/callahat/stable_jason.git", ref: "c835906fce0f6033f595296ba8a24bcb99168c5a"},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
