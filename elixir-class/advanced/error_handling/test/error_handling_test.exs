defmodule ErrorHandlingTest do
  use ExUnit.Case
  doctest ErrorHandling

  test "greets the world" do
    assert ErrorHandling.try_do() == :ok
  end
end
