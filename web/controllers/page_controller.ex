defmodule Blog.PageController do
  use Blog.Web, :controller

  plug :action

  def index(conn, _params) do
    conn
    |> put_layout(false)
    |> render("index.html")
  end
end
