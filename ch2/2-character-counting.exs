defmodule Exercise2 do
  def prompter(sendee) do
    string = IO.gets("What is the input string? ") |> String.strip

    send(sendee, {self, :string, string})

    receive do
      {:continue} ->
    end

    prompter sendee
  end

  def string_counter (sendee) do
    receive do
      {sender, :string, string} ->
        send(sendee, {self, :length, string |> String.length, string })

      string -> send(sendee, {:length, string |> String.length })
    end
    string_counter sendee
  end

  def length_stater do
    receive do
      {:length, length} -> IO.puts "some string has #{length} characters"
      {sender, :length, length, string} ->
        IO.puts "#{string} has #{length} characters"
        send(sender, {:continue})
    end

    length_stater
  end

end


length_stater = spawn(Exercise2, :length_stater, [])
string_counter = spawn(Exercise2, :string_counter, [length_stater])

Exercise2.prompter string_counter


