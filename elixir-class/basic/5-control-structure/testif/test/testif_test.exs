defmodule TestifTest do
  use ExUnit.Case
  doctest Testif

  test "greets the world" do
    assert Testif.hello() == :world
  end
end
