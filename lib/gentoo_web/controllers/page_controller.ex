defmodule GentooWeb.PageController do
  use GentooWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
