defmodule GuessWho.UserView do
  use GuessWho.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, GuessWho.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, GuessWho.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      photo_url: user.photo_url}
  end
end
