 defmodule FizzBuzz do
  # def hello(name), do: "Hello, " <> name

  # def build(file_name) do
  #   file_name
  #   |> File.read()
  #   |> handle_file_read()
  # end

  # Pattern matching com funções anônimas

  handle_result = fn
    {:ok, result} -> IO.puts "Handling result..."
    {:ok, _} -> IO.puts "This would be never run as previous will be matched beforehand."
    {:error} -> IO.puts "An error has occurred!"
  end

  fred = %{
    name: "Fred",
    age: "95",
    favorite_color: "Taupe"
  }

  def of([]), do: 0
  def of([_ | tail]), do: 1 + of(tail)
  # some_result = 1

  # Invoca a função anônima
  # handle_result.({:ok,_})

  def hello(%{endereco: person_name, cidade: cidade }) do
    IO.puts( "Hello, " <> cidade )
  end

  def hello2(%{name: person_name} = person) do
    # IO.puts "Hello, " <> person_name
    IO.inspect person
  end
end
