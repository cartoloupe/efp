name =
  IO.gets("What is your name? ")
  |> String.strip

output = "Hello, " <> name <> ", nice to meet you!"

IO.puts output
