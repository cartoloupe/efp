defmodule Exercise2 do
  def prompt do
    IO.gets("What is the input string? ") |> String.strip
  end

  def string_count(string) do
    string |> String.length
  end

  def state_length(string) do
    IO.puts "#{string} has #{string_count string} characters"
  end

end


Exercise2.prompt |> Exercise2.state_length
