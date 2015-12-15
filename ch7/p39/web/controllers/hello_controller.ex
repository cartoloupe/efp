defmodule P39.HelloController do
  use P39.Web, :controller

  alias P39.Employee

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"messenger" => messenger}) do
    render conn, "show.html", messenger: messenger
  end

  def printout(conn, %{"messenger" => messenger}) do
    employees = (Repo.all(Employee) |> Enum.sort())
    #require IEx
    #IEx.pry
    # respawn
    render conn, "printout.html", messenger: messenger, employees: employees
  end
end
