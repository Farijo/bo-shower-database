defmodule BoDatabase.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:category, primary_key: false) do
      add :name, :string, primary_key: true
    end
  end
end
