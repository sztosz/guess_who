defmodule GuessWho.QuestionTest do
  use GuessWho.ModelCase

  alias GuessWho.Question

  @valid_attrs %{hint_1: "some content", hint_2: "some content", hint_3: "some content", question: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Question.changeset(%Question{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Question.changeset(%Question{}, @invalid_attrs)
    refute changeset.valid?
  end
end
