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
    |> Enum.map( &convert_and_valuate_numbers / 1  )
    # Chamada simplifica de função anônima

  end

  def handle_file_read({:error, reason}) , do:  "Erro reading the file #{ reason}"

  def convert_and_valuate_numbers(elem) do
    number = String.to_integer( elem)
    evaluate_numbers( number)

  end

  def evaluate_numbers(number) when rem( number, 3 ) == 0 and rem( number, 3 ) == 0 ,  do: :fizzbuzz
  def evaluate_numbers(number) when rem( number, 3 ) == 0,  do: :fizz
  def evaluate_numbers(number) when rem( number, 5 ) == 0,  do: :buzz
  def evaluate_numbers(number) ,  do: number

end
