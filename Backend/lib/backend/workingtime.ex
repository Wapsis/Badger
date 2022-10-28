defmodule Api.Workingtime do
  use Ecto.Schema
  import Ecto.Changeset

  schema "workingtimes" do
    field :badge_time, :time
    field :date, :date
    field :type, :boolean, default: false
    field :uid, :id

    timestamps()
  end

  @doc false
  def changeset(workingtime, attrs) do
    workingtime
    |> cast(attrs, [:badge_time, :date, :type])
    |> validate_required([:badge_time, :date, :type])
  end
end
