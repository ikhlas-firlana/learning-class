defmodule ErrorHandling.Pack do
  @derive {Poison.Encoder, only: [:name]}
  defstruct [:name, :version]
end
