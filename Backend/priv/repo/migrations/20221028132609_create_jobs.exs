defmodule Api.Repo.Migrations.CreateJobs do
  use Ecto.Migration

  def change do
    create table(:jobs) do
      add :male_name, :string, null: false
      add :feminine_name, :string, null: false

      timestamps()
    end

    # what is the mix command to generate schema ?

  end
end
