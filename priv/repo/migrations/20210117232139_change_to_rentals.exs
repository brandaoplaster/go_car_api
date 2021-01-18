defmodule GoCarApi.Repo.Migrations.ChangeToRentals do
  use Ecto.Migration

  def change do
    alter table(:rentals) do
      add :start_date, :utc_datetime
      add :end_date, :utc_datetime
      add :total_value, :float
    end
  end
end
