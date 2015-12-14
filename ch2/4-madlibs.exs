defmodule Exercise4 do
  def madlib_getter(type) do
    word = IO.gets "Enter a #{type}: "
    [{type, word}]
  end

  def writer do
    IO.puts "writer"
  end

  def inputer do
    a = Enum.map([:noun, :verb, :adjective, :adverb],
      fn word_type -> madlib_getter word_type end
    )
    b = Enum.reduce(a, [], &++/2)
    writer
  end


end


Exercise4.inputer


