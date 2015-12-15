defmodule P39.HelloView do
  use P39.Web, :view

  def name_of(employee) do
    employee.first_name <> " " <> employee.last_name
  end

  def pad(string, number) do
    length = String.length(string)

    extra = number - length
    "" <> string <> (1..extra |> Enum.map(fn(x) -> " " end) |> Enum.join) <> "|"
  end

  def hyphens(number) do
    (1..number |> Enum.map(fn(x) -> "-" end) |> Enum.join) <> "|"
  end


  def pad_date(date, number) when date == nil do
    "" <> (1..number |> Enum.map(fn(x) -> " " end) |> Enum.join) <> "|"
  end

  def pad_date(date, number) do
    string = Ecto.Date.to_string(date)
    length = String.length(string)

    extra = number - length
    "" <> string <> (1..extra |> Enum.map(fn(x) -> " " end) |> Enum.join) <> "|"
  end

end
