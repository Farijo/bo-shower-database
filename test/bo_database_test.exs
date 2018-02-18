defmodule BoDatabaseTest do
  use ExUnit.Case
  doctest BoDatabase

  test "greets the world" do
    assert BoDatabase.hello() == :world
  end
end
