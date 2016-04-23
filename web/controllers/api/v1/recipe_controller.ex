defmodule Larica.API.V1.RecipeController do
  use Larica.Web, :controller

  alias Larica.Repo
  alias Larica.Recipe

  def index(conn, _params) do
    recipes = Repo.all(Recipe)
    json(conn, RecipeSerializer.to_map(recipes))
  end
end
