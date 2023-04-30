 defmodule FizzBuzz do
  def build(file_name) do
      file = File.read( file_name )
      handle_file_read(file)
      # hello()
    end

     def handle_file_read({:ok, result }) , do: result
     def handle_file_read({:error, reason }) , do: reason
#     # def hello(), do "Hello World"
#   # end

#     # def hello(), do: "Hello World"                              # hello/0
#     # def hello(name), do "Hello, #{name}"                        # hello/1
#     # def hello(name1, name2), do: "Hello, #{name1} and #{name2}" # hello/2

#   def build(file_name) do
#   end

# end

# defmodule FizzBuzz do
#   def hello(), do: "Hello World"                              # hello/0
#   end

end
