defmodule BoDatabase.Entity do
  use Ecto.Schema

  schema "entity" do
    field :name
    field :img
  end
end
