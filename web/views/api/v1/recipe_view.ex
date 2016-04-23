defmodule Larica.API.V1.RecipeView do
	use Larica.Web, :view

	def render("index.json", %{recipes: recipes}) do
		recipes
	end
end