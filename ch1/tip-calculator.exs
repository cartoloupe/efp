IO.puts "tip calculator"
{bill, _} = Float.parse IO.gets "the bill? "
{tiprate, _} = Float.parse IO.gets "tip rate? "

IO.puts "bill is #{bill}"
IO.puts "tiprate is #{tiprate}"

tip = Float.round(
  ( tiprate / 100 ) * bill,
  2
)
total = bill + tip

IO.puts "Tip: $#{tip}"
IO.puts "Total: $#{total}"
