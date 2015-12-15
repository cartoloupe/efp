defmodule P39.HelloController do
  use P39.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
