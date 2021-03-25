defmodule CtrWeb.UserView do
  use CtrWeb, :view


  def render("index.json", %{users: users}) do
    %{data: render_many(users, __MODULE__, "show.json")}
  end

  def render("show.json", %{user: user}) do
    %{
      name: user.name,
      balance: user.balance
    }
  end
end
