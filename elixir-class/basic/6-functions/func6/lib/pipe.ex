# Modules
defmodule Func6.P do
    def split do
        "Elixir rocks" |> String.split()
    end

    def splitUp do
        "Elixir rocks" |> String.upcase() |> String.split()
    end

    def endwith do
        "elixir" |> String.ends_with?("ixir")
    end

    # Module Attributes
    @greeting "Hello"

    def greeting(name) do
        ~s(#{@greeting} #{name}.)
    end

    def morning(name) do
        "Good morning #{@greeting}, #{name}."
    end

    def evening(name) do
        "Good night #{@greeting}, #{name}."
    end

end