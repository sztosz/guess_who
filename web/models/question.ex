defmodule GuessWho.Question do
  use GuessWho.Web, :model

  schema "questions" do
    field :question, :string
    field :hint_1, :string
    field :hint_2, :string
    field :hint_3, :string
    belongs_to :user, GuessWho.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:question, :hint_1, :hint_2, :hint_3])
    |> validate_required([:question])
    |> assoc_constraint(:user)
  end
end
