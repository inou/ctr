defmodule CtrWeb.PageController do
  use CtrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
