defmodule BoDatabase.Repo.Migrations.CreateRace do
  use Ecto.Migration

  def change do
    create table(:race, primary_key: false) do
      add :name, :string, size: 10, primary_key: true
    end
  end
end
