defmodule GoCarApi.Schedules.Rental do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "rentals" do
    field :total_value, :float
    field :start_date, :utc_datetime
    field :end_date, :utc_datetime

    timestamps()
  end

  @doc false
  def changeset(rental, attrs) do
    rental
    |> cast(attrs, [:total_value, :start_date, :end_date])
    |> validate_required([:total_value, :start_date, :end_date])
  end
end
