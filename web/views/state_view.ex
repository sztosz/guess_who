defmodule GuessWho.StateView do
  use GuessWho.Web, :view

  def render("index.json", %{states: states}) do
    %{data: render_many(states, GuessWho.StateView, "state.json")}
  end

  def render("show.json", %{state: state}) do
    %{data: render_one(state, GuessWho.StateView, "state.json")}
  end

  def render("state.json", %{state: state}) do
    %{id: state.id,
      user_id: state.user_id,
      questions: state.questions,
      answered: state.answered,
      points: state.points}
  end
end
