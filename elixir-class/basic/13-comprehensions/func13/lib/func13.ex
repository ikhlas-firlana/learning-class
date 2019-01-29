
defmodule Func13 do
  
  import Integer
  require Logger
  @moduledoc """
  Documentation for Func13.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Func13.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
    For loop.

    ## Examples

        iex> Func13.for_loop()
        [:ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok, :ok]

    """
  def for_loop do
    list = [1, 2, 3, 4]
    for n <- list, times <- 1..n do
      String.duplicate("*", times)
      Logger.info "Hello #{times}"
    end
  end

  @doc """
    Filters

    ## Examples

        iex> Func13.filtering
        [2, 4, 6, 8, 10]

    """
  def filtering do
    for x <- 1..10, is_even(x), do: x
  end

  @doc """
    into 

    ## Examples 1

        iex> Func13.into
        %{one: 1, three: 3, two: 2}

    """
  def into do
   
    for {k, v} <- [one: 1, two: 2, three: 3], into: %{}, do: {k, v}
    Logger.info "#{k}"
  end

  
end
