defmodule BoDatabase.Race do
  use Ecto.Schema

  @primary_key {:name, :string, autogenerate: false}
  schema "race", do: nil
end
