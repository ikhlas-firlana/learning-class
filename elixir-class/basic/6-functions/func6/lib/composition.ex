defmodule Func6.Comp do
 @moduledoc """
  Provides a function `hello/1` to greet a human
  """

  @doc """
  Prints a hello message

  ## Parameters

    - name: String that represents the name of the person.

  ## Examples

      iex> Greeter.hello("Sean")
      "Hello, Sean"

      iex> Greeter.hello("pete")
      "Hello, pete"

  """
  @spec hello(String.t()) :: String.t()
  def hello(name) do
    "Hello, " <> name
  end
  
    def basic(name), do: "Hi, #{name}"
end

defmodule Composition do
  alias Func6.Comp, as: F

  def greeting(name), do: F.basic(name)
end