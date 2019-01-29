defmodule Func6 do
  @moduledoc """
  Documentation for Func6.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Func6.hello()
      :world

  """
  def hello do
    :world
  end

  def anonymous do
    sum = fn (a, b) -> a + b end
    sum.(2, 3)
  end

  def pattern_match do 
    handle_result = fn
      {:ok, result} -> IO.puts "Handling result..."
      {:ok, _} -> IO.puts "This would be never run as previous will be matched beforehand."
      {:error} -> IO.puts "An error has occurred!"
    end

    some_result = 1
    handle_result.({:ok, some_result})
    handle_result.({:error})
  end

  
end
