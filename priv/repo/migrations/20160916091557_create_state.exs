defmodule GuessWho.Repo.Migrations.CreateState do
  use Ecto.Migration

  def change do
    create table(:states) do
      add :questions, :integer
      add :answered, :integer
      add :points, :integer
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:states, [:user_id])

  end
end
