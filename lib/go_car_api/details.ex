defmodule GoCarApi.Details do
  @moduledoc """
  The Details context.
  """

  import Ecto.Query, warn: false
  alias GoCarApi.Repo

  alias GoCarApi.Details.Brand

  @doc """
  Returns the list of brands.

  ## Examples

      iex> list_brands()
      [%Brand{}, ...]

  """
  def list_brands do
    Repo.all(Brand)
  end

  @doc """
  Gets a single brand.

  Raises `Ecto.NoResultsError` if the Brand does not exist.

  ## Examples

      iex> get_brand!(123)
      %Brand{}

      iex> get_brand!(456)
      ** (Ecto.NoResultsError)

  """
  def get_brand!(id), do: Repo.get!(Brand, id)

  @doc """
  Creates a brand.

  ## Examples

      iex> create_brand(%{field: value})
      {:ok, %Brand{}}

      iex> create_brand(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_brand(attrs \\ %{}) do
    %Brand{}
    |> Brand.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a brand.

  ## Examples

      iex> update_brand(brand, %{field: new_value})
      {:ok, %Brand{}}

      iex> update_brand(brand, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_brand(%Brand{} = brand, attrs) do
    brand
    |> Brand.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a brand.

  ## Examples

      iex> delete_brand(brand)
      {:ok, %Brand{}}

      iex> delete_brand(brand)
      {:error, %Ecto.Changeset{}}

  """
  def delete_brand(%Brand{} = brand) do
    Repo.delete(brand)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking brand changes.

  ## Examples

      iex> change_brand(brand)
      %Ecto.Changeset{data: %Brand{}}

  """
  def change_brand(%Brand{} = brand, attrs \\ %{}) do
    Brand.changeset(brand, attrs)
  end

  alias GoCarApi.Details.Specification

  @doc """
  Returns the list of specifications.

  ## Examples

      iex> list_specifications()
      [%Specification{}, ...]

  """
  def list_specifications do
    Repo.all(Specification)
  end

  @doc """
  Gets a single specification.

  Raises `Ecto.NoResultsError` if the Specification does not exist.

  ## Examples

      iex> get_specification!(123)
      %Specification{}

      iex> get_specification!(456)
      ** (Ecto.NoResultsError)

  """
  def get_specification!(id), do: Repo.get!(Specification, id)

  @doc """
  Creates a specification.

  ## Examples

      iex> create_specification(%{field: value})
      {:ok, %Specification{}}

      iex> create_specification(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_specification(attrs \\ %{}) do
    %Specification{}
    |> Specification.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a specification.

  ## Examples

      iex> update_specification(specification, %{field: new_value})
      {:ok, %Specification{}}

      iex> update_specification(specification, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_specification(%Specification{} = specification, attrs) do
    specification
    |> Specification.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a specification.

  ## Examples

      iex> delete_specification(specification)
      {:ok, %Specification{}}

      iex> delete_specification(specification)
      {:error, %Ecto.Changeset{}}

  """
  def delete_specification(%Specification{} = specification) do
    Repo.delete(specification)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking specification changes.

  ## Examples

      iex> change_specification(specification)
      %Ecto.Changeset{data: %Specification{}}

  """
  def change_specification(%Specification{} = specification, attrs \\ %{}) do
    Specification.changeset(specification, attrs)
  end
end
