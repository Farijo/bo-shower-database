defmodule BoDatabase do

  def fetch_races do
    BoDatabase.Race |> BoDatabase.Repo.all
  end

  def fetch_races_name do
    fetch_races()
    |> List.foldl([], fn(x, acc) -> [x.name|acc] end)
  end

end
