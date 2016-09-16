defmodule GuessWho.QuestionView do
  use GuessWho.Web, :view

  def render("index.json", %{questions: questions}) do
    %{data: render_many(questions, GuessWho.QuestionView, "question.json")}
  end

  def render("show.json", %{question: question}) do
    %{data: render_one(question, GuessWho.QuestionView, "question.json")}
  end

  def render("question.json", %{question: question}) do
    %{id: question.id,
      user_id: question.user_id,
      question: question.question,
      hint_1: question.hint_1,
      hint_2: question.hint_2,
      hint_3: question.hint_3}
  end
end
