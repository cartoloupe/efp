(fn output -> IO.puts output end).(
  (fn name -> "Hello, " <> name <> ", nice to meet you!" end).(
    (fn -> IO.gets("What is your name? ") |> String.strip end).()
  )
)
