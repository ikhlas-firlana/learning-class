defmodule Func6.Userinspect do
 @derive {Inspect, only: [:name]}
  defstruct name: nil, roles: []
end