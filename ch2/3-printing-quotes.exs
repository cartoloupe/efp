defmodule Exercise3 do
  def inputer(quoter) do
    send(quoter, {self})

    receive do
      {:continue, quote, author} ->
        IO.puts author <> " says, " <> ~s(") <> quote <> ~s(")
        IO.puts "\n"
    end

    inputer quoter
  end

  def quoter(authorer) do
    receive do
      {sender} ->
        quote = IO.gets("What did who say? ") |> String.strip

        send(authorer, {sender, quote})
    end
    quoter authorer
  end

  def authorer do
    receive do
      {sender, quote} ->
        author = IO.gets("Who said that what? ") |> String.strip
        send(sender, {:continue, quote, author})
    end
    authorer
  end

end


authorer = spawn(Exercise3, :authorer, [])
quoter = spawn(Exercise3, :quoter, [authorer])

Exercise3.inputer quoter


