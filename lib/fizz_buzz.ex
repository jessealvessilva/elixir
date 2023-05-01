 defmodule FizzBuzz do
  # def hello(name), do: "Hello, " <> name

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end
  # O result fica implicito como parâmetro na chamada da função String
  defp handle_file_read({:ok, result}) do
    result =
    result
    |> String.split(",")
    |> Enum.map( &convert_and_valuate_numbers / 1  )
    # Chamada simplifica de função anônima

    {:ok, result }
  end

  defp handle_file_read({:error, reason}) , do: {:error, "Erro reading the file: #{reason} "}

  defp convert_and_valuate_numbers(elem) do
    elem
    |> String.to_integer( )
    |> evaluate_numbers()

  end

  defp evaluate_numbers(number) when rem( number, 3 ) == 0 and rem( number, 3 ) == 0 ,  do: :fizzbuzz
  defp evaluate_numbers(number) when rem( number, 3 ) == 0,  do: :fizz
  defp evaluate_numbers(number) when rem( number, 5 ) == 0,  do: :buzz
  defp evaluate_numbers(number) ,  do: number

end
