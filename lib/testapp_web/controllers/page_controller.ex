defmodule TestappWeb.PageController do
  use TestappWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
