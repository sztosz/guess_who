defmodule GuessWho.User do
  use GuessWho.Web, :model

  schema "users" do
    field :name, :string
    field :photo_url, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :photo_url])
    |> validate_required([:name, :photo_url])
  end
end
