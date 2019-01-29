defmodule M do
  def call() do
    case {:ok, "Hello World"} do
        {:ok, result} -> result
        {:error} -> "Uh oh!"
        _ -> "Catch all"
    end
  end

  def callPie() do
    pie = 3.14
    case "cherry pie" do
        ^pie -> "Not so tasty"
        pie -> "I bet #{pie} is tasty"
    end
  end

  def callMatch() do
    case {1, 2, 3} do
      {1, x, 3} when x > 0 ->
        "Will match"
      _ ->
        "Won't match"
    end
  end

  def callCond() do
    cond do
        2 + 2 == 5 -> "This will not be true"
        2 * 2 == 3 -> "Nor this"
        1 + 1 == 2 -> "But this will"
    end
  end

  def callWith() do
    user = %{first: "Sean", last: "Callan"}
    with {:ok, first} <- Map.fetch(user, :first),
        {:ok, last} <- Map.fetch(user, :last),
         do: last <> ", " <> first    
  end
end