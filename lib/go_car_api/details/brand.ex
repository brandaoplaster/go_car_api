defmodule GoCarApi.Details.Brand do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "brands" do
    field :title, :string, unique: true

    timestamps()
  end

  @doc false
  def changeset(brand, attrs) do
    brand
    |> cast(attrs, [:title])
    |> validate_required([:title])
    |> unique_constraint(:title)
    |> update_change(:title, &String.downcase(&1))
    |> unique_constraint(:title)
  end
end
