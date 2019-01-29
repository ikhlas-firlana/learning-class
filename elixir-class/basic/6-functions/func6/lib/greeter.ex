defmodule Greeter do
  def hello(name) do
    "Hello, " <> name
  end

  # short func
  def helloShort(name), do: "Hello, " <> name

  
  # Function Naming and Arity 
  def hello(), do: "Hello, anonymous person!"   # hello/0
  def hello(name), do: "Hello, " <> name        # hello/1
  def hello(name1, name2), do: "Hello, #{name1} and #{name2}"

  # Functions and Pattern Matching
  def helloPattern(%{name: person_name}) do
    IO.puts "Hello, " <> person_name
  end
  def initHelloPatternMatch() do
    fred = %{
        name: "Fred",
        age: "95",
        favorite_color: "Taupe"
        }
    Greeter.helloPattern(fred)
  end

  # Private Functions
  def helloPrivate(name), do: phrase() <> name
  defp phrase, do: "Hello, "

  # Guard
  def helloG(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> helloG
  end

  def helloG(name) when is_binary(name) do
    phraseG() <> name
  end

  defp phraseG, do: "Hello, "

  # default Args
  def helloA(name, language_code \\ "en") do
    phraseA(language_code) <> name
  end

  defp phraseA("en"), do: "Hello, "
  defp phraseA("es"), do: "Hola, "

  def init() do 
    # Greeter.hello("Sean")
    # Greeter.helloShort("Sean") or Greeter.helloShort "Sean"
    # Greeter.hello("Sean", "James") or Greeter.hello "Sean","James"
  end
end