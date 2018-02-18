defmodule BoDatabase.Repo.Migrations.CreateBoItemSet do
  use Ecto.Migration

  def change do
    create table(:bo_item_set) do
      add :bo_item_id, references(:bo_item, [on_delete: :restrict, on_update: :update_all]), primary_key: true
    end
  end
end
