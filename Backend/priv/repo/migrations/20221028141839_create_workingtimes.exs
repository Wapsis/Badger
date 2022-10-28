defmodule Api.Repo.Migrations.CreateWorkingtimes do
  use Ecto.Migration

  def change do
    create table(:workingtimes) do
      add :badge_time, :time
      add :date, :date
      add :type, :boolean, default: false, null: false
      add :uid, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:workingtimes, [:uid])
  end
end
