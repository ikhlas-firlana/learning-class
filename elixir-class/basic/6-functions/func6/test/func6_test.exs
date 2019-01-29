defmodule Func6Test do
  use ExUnit.Case
  doctest Func6

  test "greets the world" do
    assert Func6.hello() == :world
  end
end
