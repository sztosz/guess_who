defmodule GuessWho.QuestionView do
  use GuessWho.Web, :view

  def render("index.json", %{questions: questions}) do
    %{data: render_many(questions, GuessWho.QuestionView, "question.json")}
  end

  def render("show.json", %{question: question}) do
    %{data: render_one(question, GuessWho.QuestionView, "question.json")}
  end

  def render("random.json", %{question: question, wrong_users: wrong_users}) do
    %{id: question.id,
      correct_user_id: question.user_id,
      wrong_users_ids: Enum.map(wrong_users, fn user -> user.id end),
      question: question.question,
      hint_1: question.hint_1,
      hint_2: question.hint_2,
      hint_3: question.hint_3}
  end
end
