defmodule BoDatabase.Repo.Migrations.CreateBo do
  use Ecto.Migration

  def change do
    create table(:bo, primary_key: false) do
      add :build_name, :string
      add :bo_item_set_id, references(:bo_item_set, [on_delete: :restrict, on_update: :update_all]), primary_key: true
      add :categories, references(:category_set, [on_delete: :restrict, on_update: :update_all])
      add :for_race, references(:race, [column: :name, type: :string, on_delete: :restrict, on_update: :update_all]), null: false
      add :versus, references(:race, [column: :name, type: :string, on_delete: :restrict, on_update: :update_all])
    end

    create index(:bo, [:build_name], unique: true)
  end
end
