defmodule BoDatabase.Repo.Migrations.CreateEntity do
  use Ecto.Migration

  def change do
      create table(:entity) do
        add :name, :string
        add :img, :string
      end
  end
end
