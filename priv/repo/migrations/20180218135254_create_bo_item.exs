defmodule BoDatabase.Repo.Migrations.CreateBoItem do
  use Ecto.Migration

  def change do
    create table(:bo_item) do
      add :pop, :"tinyint unsigned"
      add :time, :"time"
      add :entity_id, references(:entity, [on_delete: :restrict, on_update: :update_all])
      add :details, :string
    end
  end
end
