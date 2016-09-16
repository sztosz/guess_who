defmodule GuessWho.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :photo_url, :string

      timestamps()
    end

  end
end
