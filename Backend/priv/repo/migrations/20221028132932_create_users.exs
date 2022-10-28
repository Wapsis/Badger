defmodule Api.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :last_name, :string, null: false
      add :first_name, :string, null: false
      add :email, :string, null: false
      add :password, :string, null: false
      add :active, :boolean, null: false, default: false
      add :role, :string, null: false, default: "user"
      add :modulation, :time, null: false, default: "00:00:00"
      add :souplesse, :time, null: false, default: "00:00:00"
      add :job, references(:jobs, on_delete: :nothing), null: false
      add :sexe, :string, null: false
      add :team, :string, null: false
      add :weekly_working_minutes, :float, null: false, default: 2100
      add :start_date, :date, null: false
      add :end_date, :date, null: false

      timestamps()
    end
  end
end
