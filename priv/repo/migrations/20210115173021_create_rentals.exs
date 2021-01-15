defmodule GoCarApi.Repo.Migrations.CreateRentals do
  use Ecto.Migration

  def change do
    create table(:rentals, primary_key: false) do
      add :id, :binary_id, primary_key: true

      timestamps()
    end

  end
end
