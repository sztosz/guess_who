defmodule GuessWho.StateTest do
  use GuessWho.ModelCase

  alias GuessWho.State

  @valid_attrs %{answered: 42, points: 42, questions: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = State.changeset(%State{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = State.changeset(%State{}, @invalid_attrs)
    refute changeset.valid?
  end
end
