defmodule M do
  def hi(name) do
    if name == "ikhlas" do
      IO.puts "Hello, ikhlas firlana"
    else
      IO.puts "Hello, #{name}"
    end

  end
end