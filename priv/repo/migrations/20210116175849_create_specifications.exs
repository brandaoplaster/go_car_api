defmodule GoCarApi.Repo.Migrations.CreateSpecifications do
  use Ecto.Migration

  def change do
    create table(:specifications, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :number_seats,  :integer
      add :type_of_fuel, :string
      add :air_conditioning, :boolean

      timestamps()
    end

  end
end
