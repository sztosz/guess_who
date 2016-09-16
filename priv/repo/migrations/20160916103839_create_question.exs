defmodule GuessWho.Repo.Migrations.CreateQuestion do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :question, :string
      add :hint_1, :string
      add :hint_2, :string
      add :hint_3, :string
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:questions, [:user_id])

  end
end
