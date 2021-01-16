defmodule GoCarApi.DetailsTest do
  use GoCarApi.DataCase

  alias GoCarApi.Details

  describe "brands" do
    alias GoCarApi.Details.Brand

    @valid_attrs %{title: "some title"}
    @update_attrs %{title: "some updated title"}
    @invalid_attrs %{title: nil}

    def brand_fixture(attrs \\ %{}) do
      {:ok, brand} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Details.create_brand()

      brand
    end

    test "list_brands/0 returns all brands" do
      brand = brand_fixture()
      assert Details.list_brands() == [brand]
    end

    test "get_brand!/1 returns the brand with given id" do
      brand = brand_fixture()
      assert Details.get_brand!(brand.id) == brand
    end

    test "create_brand/1 with valid data creates a brand" do
      assert {:ok, %Brand{} = brand} = Details.create_brand(@valid_attrs)
      assert brand.title == "some title"
    end

    test "create_brand/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Details.create_brand(@invalid_attrs)
    end

    test "update_brand/2 with valid data updates the brand" do
      brand = brand_fixture()
      assert {:ok, %Brand{} = brand} = Details.update_brand(brand, @update_attrs)
      assert brand.title == "some updated title"
    end

    test "update_brand/2 with invalid data returns error changeset" do
      brand = brand_fixture()
      assert {:error, %Ecto.Changeset{}} = Details.update_brand(brand, @invalid_attrs)
      assert brand == Details.get_brand!(brand.id)
    end

    test "delete_brand/1 deletes the brand" do
      brand = brand_fixture()
      assert {:ok, %Brand{}} = Details.delete_brand(brand)
      assert_raise Ecto.NoResultsError, fn -> Details.get_brand!(brand.id) end
    end

    test "change_brand/1 returns a brand changeset" do
      brand = brand_fixture()
      assert %Ecto.Changeset{} = Details.change_brand(brand)
    end
  end

  describe "specifications" do
    alias GoCarApi.Details.Specification

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def specification_fixture(attrs \\ %{}) do
      {:ok, specification} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Details.create_specification()

      specification
    end

    test "list_specifications/0 returns all specifications" do
      specification = specification_fixture()
      assert Details.list_specifications() == [specification]
    end

    test "get_specification!/1 returns the specification with given id" do
      specification = specification_fixture()
      assert Details.get_specification!(specification.id) == specification
    end

    test "create_specification/1 with valid data creates a specification" do
      assert {:ok, %Specification{} = specification} = Details.create_specification(@valid_attrs)
    end

    test "create_specification/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Details.create_specification(@invalid_attrs)
    end

    test "update_specification/2 with valid data updates the specification" do
      specification = specification_fixture()
      assert {:ok, %Specification{} = specification} = Details.update_specification(specification, @update_attrs)
    end

    test "update_specification/2 with invalid data returns error changeset" do
      specification = specification_fixture()
      assert {:error, %Ecto.Changeset{}} = Details.update_specification(specification, @invalid_attrs)
      assert specification == Details.get_specification!(specification.id)
    end

    test "delete_specification/1 deletes the specification" do
      specification = specification_fixture()
      assert {:ok, %Specification{}} = Details.delete_specification(specification)
      assert_raise Ecto.NoResultsError, fn -> Details.get_specification!(specification.id) end
    end

    test "change_specification/1 returns a specification changeset" do
      specification = specification_fixture()
      assert %Ecto.Changeset{} = Details.change_specification(specification)
    end
  end
end
