defmodule Larica.RecipeIngredient do
  use Larica.Web, :model

  schema "recipe_ingredients" do
    belongs_to :recipe, Larica.Recipe
    belongs_to :ingredient, Larica.Ingredient

    timestamps
  end

  @required_fields ~w()
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
