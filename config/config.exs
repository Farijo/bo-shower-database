# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :bo_database, BoDatabase.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "bo_database_repo",
  username: "root",
  hostname: "localhost",
  port: 3306

config :bo_database, ecto_repos: [BoDatabase.Repo]
