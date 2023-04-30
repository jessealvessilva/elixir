 defmodule FizzBuzz do
  # def hello(name), do: "Hello, " <> name

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end
  # O result fica implicito como parâmetro na chamada da função String
  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map( &String.to_integer/1 )
    # Chamada simplifica de função anônima

  end


end
