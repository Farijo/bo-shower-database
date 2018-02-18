defmodule BoDatabase.Repo.Migrations.PopulateRace do
  use Ecto.Migration

  def change do
    BoDatabase.Repo.insert_all(BoDatabase.Race, [[name: "protoss"], [name: "terran"], [name: "zerg"]])
  end
end
