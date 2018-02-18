defmodule BoDatabase.Repo.Migrations.CreateCategorySet do
  use Ecto.Migration

  def change do
    create table(:category_set) do
      add :a_category, references(:category, [column: :name, type: :string, on_delete: :restrict, on_update: :update_all]), primary_key: true
    end
  end
end
