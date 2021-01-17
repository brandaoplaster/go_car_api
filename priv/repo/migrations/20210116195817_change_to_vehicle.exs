defmodule GoCarApi.Repo.Migrations.ChangeToVehicle do
  use Ecto.Migration

  def change do
    alter table(:vehicles) do
      add :name, :string
      add :year, :string
      add :board, :string
      add :image, :text
    end
  end
end
