defmodule CtrWeb.UserController do
  use CtrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json", %{users: [user1(), user2()]})
  end

  def show(conn, %{"id" => "1"}) do
      render(conn, "show.json", %{user: user1()})
  end
  def show(conn, _) do
      render(conn, "show.json", %{user: user2()})
  end

  defp user1 do
    %{
      id: 1,
      name: "Harry Potter",
      balance: nil
    }
  end

  defp user2 do
    %{
      id: 2,
      name: "Rainbow Dash",
      balance: "a65.1"
    }
  end
end
