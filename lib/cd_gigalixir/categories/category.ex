defmodule CdGigalixir.Categories.Category do
  use Ecto.Schema
  import Ecto.Changeset

  schema "name" do
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:description])
    |> validate_required([:description])
  end
end
