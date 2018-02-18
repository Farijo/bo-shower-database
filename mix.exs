defmodule BoDatabase.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bo_database,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {BoDatabase.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, git: "git://github.com/Farijo/ecto.git"},
      {:mariaex, "~> 0.9.0-dev", [env: :prod, git: "https://github.com/xerions/mariaex.git", optional: true]}
    ]
  end
end
