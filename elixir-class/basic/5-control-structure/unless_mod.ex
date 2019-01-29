defmodule M do
  def hi(name) do
    unless name == "ikhlas" do
      IO.puts "Hello, #{name}"
    end

  end
end