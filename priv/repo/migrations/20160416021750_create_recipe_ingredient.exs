defmodule Larica.Repo.Migrations.CreateRecipeIngredient do
  use Ecto.Migration

  def change do
    create table(:recipe_ingredients) do
      add :recipe_id, references(:recipes, on_delete: :nothing)
      add :ingredient_id, references(:ingredients, on_delete: :nothing)

      timestamps
    end
    create index(:recipe_ingredients, [:recipe_id])
    create index(:recipe_ingredients, [:ingredient_id])

  end
end
