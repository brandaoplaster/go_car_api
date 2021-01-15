defmodule GoCarApi.FleetsTest do
  use GoCarApi.DataCase

  alias GoCarApi.Fleets

  describe "vehicles" do
    alias GoCarApi.Fleets.Vehicle

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def vehicle_fixture(attrs \\ %{}) do
      {:ok, vehicle} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Fleets.create_vehicle()

      vehicle
    end

    test "list_vehicles/0 returns all vehicles" do
      vehicle = vehicle_fixture()
      assert Fleets.list_vehicles() == [vehicle]
    end

    test "get_vehicle!/1 returns the vehicle with given id" do
      vehicle = vehicle_fixture()
      assert Fleets.get_vehicle!(vehicle.id) == vehicle
    end

    test "create_vehicle/1 with valid data creates a vehicle" do
      assert {:ok, %Vehicle{} = vehicle} = Fleets.create_vehicle(@valid_attrs)
    end

    test "create_vehicle/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Fleets.create_vehicle(@invalid_attrs)
    end

    test "update_vehicle/2 with valid data updates the vehicle" do
      vehicle = vehicle_fixture()
      assert {:ok, %Vehicle{} = vehicle} = Fleets.update_vehicle(vehicle, @update_attrs)
    end

    test "update_vehicle/2 with invalid data returns error changeset" do
      vehicle = vehicle_fixture()
      assert {:error, %Ecto.Changeset{}} = Fleets.update_vehicle(vehicle, @invalid_attrs)
      assert vehicle == Fleets.get_vehicle!(vehicle.id)
    end

    test "delete_vehicle/1 deletes the vehicle" do
      vehicle = vehicle_fixture()
      assert {:ok, %Vehicle{}} = Fleets.delete_vehicle(vehicle)
      assert_raise Ecto.NoResultsError, fn -> Fleets.get_vehicle!(vehicle.id) end
    end

    test "change_vehicle/1 returns a vehicle changeset" do
      vehicle = vehicle_fixture()
      assert %Ecto.Changeset{} = Fleets.change_vehicle(vehicle)
    end
  end
end
