defmodule BoDatabase.Repo.Migrations.PopulateEntity do
  use Ecto.Migration

  def change do
    BoDatabase.Repo.insert_all(BoDatabase.Entity, [
      [name: "Transfert", img: "ability_protoss_blink_color"],
      [name: "Charge", img: "ability_protoss_charge_color"]
    ])
  end
end
