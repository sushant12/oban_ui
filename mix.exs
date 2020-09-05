defmodule ObanUi.MixProject do
  use Mix.Project

  def project do
    [
      app: :oban_ui,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      compilers: [:phoenix] ++ Mix.compilers(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :phoenix],
      mod: {ObanUi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.4.11", only: :dev},
      {:phoenix_ecto, "~> 4.0", only: :dev},
      {:ecto_sql, "~> 3.1", only: :dev},
      {:postgrex, ">= 0.0.0", only: :dev},
      {:phoenix_html, "~> 2.14.1", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
