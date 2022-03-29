defmodule CdGigalixir.CategoriesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CdGigalixir.Categories` context.
  """

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        description: "some description"
      })
      |> CdGigalixir.Categories.create_category()

    category
  end
end
