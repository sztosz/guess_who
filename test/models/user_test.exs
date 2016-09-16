defmodule GuessWho.UserTest do
  use GuessWho.ModelCase

  alias GuessWho.User

  @valid_attrs %{name: "some content", photo_url: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
