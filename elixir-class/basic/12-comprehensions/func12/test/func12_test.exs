defmodule Func12Test do
  use ExUnit.Case
  doctest Func12

  test "greets the world" do
    assert Func12.hello() == :world
  end
end
