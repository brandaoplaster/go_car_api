defmodule GoCarApi.Repo.Migrations.CreateBrands do
  use Ecto.Migration

  def change do
    create table(:brands, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :title, :string

      timestamps()
    end

    create unique_index(:brands, [:title])
  end
end
