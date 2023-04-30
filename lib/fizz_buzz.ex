 defmodule FizzBuzz do
  # def hello(name), do: "Hello, " <> name

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    list = String.split(result, ",")
    Enum.map( list, fn number -> String.to_integer( number) end )
  end


end
