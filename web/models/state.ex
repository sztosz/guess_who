defmodule GuessWho.State do
  use GuessWho.Web, :model

  schema "states" do
    field :questions, :integer
    field :answered, :integer
    field :points, :integer
    belongs_to :user, GuessWho.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:questions, :answered, :points])
    |> validate_required([:questions, :answered, :points])
    |> assoc_constraint(:user)
  end
end
