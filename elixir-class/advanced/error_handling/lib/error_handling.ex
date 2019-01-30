defmodule ErrorHandling do
  @moduledoc """
  Documentation for ErrorHandling.
  """
  import Logger
  import Poison
  alias ErrorHandling.Pack, as: Pack
  @doc """
  Try Do Error

  ## Examples

      iex> ErrorHandling.try_do_error
      An error occurred: Oh no! 

  """
  def try_do_error do
    Logger.info " ::: \n"
    try do
      raise "Oh no!"
    rescue
      e in RuntimeError -> IO.puts("An error occurred: " <> e.message)
    end
  end

  @doc """
  Try Do Error

  ## Examples

      iex> ErrorHandling.try_do_error_multiple
      missing :source_file option
      unable to read source file

  """
  def try_do_error_multiple do
    Logger.info " ::: \n"
    try do
      opts = {:ok}
      opts
      |> Keyword.fetch!(:source_file)
      |> File.read!()
    rescue
      e in KeyError -> IO.puts("missing :source_file option")
      e in File.Error -> IO.puts("unable to read source file")
      e in RuntimeError -> IO.puts("An error occurred")
    end
  end

  def try_open_file do
      Logger.info " ::: \n"
      # {:ok, file} = File.open("./package.json")
      filename = "./package.json"
    try do
      # {:ok, content} <- Poison.(file)
      # {:ok, %Pack{}} <- ErrorHandling.get_json("./package.json")
      {:ok, body} = File.read(filename)
      {:ok, jsn} = Poison.decode(body, as: %Pack{})
      # jsn.main
      jsn.name
      # json[:author]  
    rescue
      e in File.Error -> IO.puts("missing :source_file option")
    after
      # File.close(file)
    end
  end

  defp get_json(filename) do
    with {:ok, body} <- File.read(filename),
         {:ok, json} <- Poison.decode(body), do: {:ok, json}
  end
end