 defmodule FizzBuzz do
  # def hello(name), do: "Hello, " <> name

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    list = String.split(result, ",")
    # Chamada simplifica de função anônima
    Enum.map( list, &String.to_integer( number/1) )
  end


end
