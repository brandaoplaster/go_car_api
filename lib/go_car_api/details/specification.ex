defmodule GoCarApi.Details.Specification do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "specifications" do
    field :number_seats, :integer
    field :type_of_fuel, :string
    field :air_conditioning, :boolean

    timestamps()
  end

  @doc false
  def changeset(specification, attrs) do
    specification
    |> cast(attrs, [])
    |> validate_required([])
  end
end
