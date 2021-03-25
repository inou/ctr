defmodule CtrWeb.UserControllerTest do
  use CtrWeb.ConnCase

  alias CtrApi.ClientImpl

  test "GET /users", %{conn: conn} do
    conn = get(conn, "/api/users")
    assert %{"data" => [_, _]} = json_response(conn, 200)
  end


  test "GET /users and use the client directly", _ctx do
    {:ok, clients} = ClientImpl.users()
    assert length(clients) == 2
  end

  test "GET /users via hammox", %{conn: _conn} do
    users_0 = Hammox.protect({ClientImpl, :users, 0}, CtrApi)
    {:ok, clients} = users_0.()
    assert length(clients) == 2
  end
end
