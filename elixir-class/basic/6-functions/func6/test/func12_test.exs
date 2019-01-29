
defmodule Func12.ExampleTest do
    use ExUnit.Case
    doctest Func12.Example
    
    test "greets the world" do
        assert Func12.Example.hello() == :world
    end
end