defmodule Api.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :last_name, :string
    field :first_name, :string
    field :email, :string
    field :password, :string
    field :active, :boolean
    field :role, :string
    field :modulation, :time
    field :souplesse, :time
    field :job, :id
    field :sexe, :string
    field :team, :string
    field :weekly_working_minutes, :float
    field :start_date, :date
    field :end_date, :date

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:l])
    |> validate_required([:l])
  end
end
