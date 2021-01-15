defmodule GoCarApi.Fleets.Vehicle do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "vehicles" do
    field :name, :string
    field :brand, :string
    field :daily_value, :float

    timestamps()
  end

  @doc false
  def changeset(vehicle, attrs) do
    vehicle
    |> cast(attrs, [:name, :brand, :daily_value])
    |> validate_required([:name, :brand, :daily_value])
  end
end
