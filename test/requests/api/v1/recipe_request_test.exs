defmodule Larica.Api.V1.RecipeRequestTest do

  use Larica.ConnCase
  alias Larica.Recipe
  import Larica.Factory

  setup do
    :ok
  end

  test "GET /api/v1/recipes returns an empty list of recipes" do
    conn = get conn(), "/api/v1/recipes"

    assert conn.status == 200
    target_recipe = json_response(conn, 200)

    assert target_recipe ==  []
  end

  test "GET /api/v1/recipes returns a list of recipes" do
    recipe = insert(:recipe)

    conn = get conn(), "/api/v1/recipes"

    assert conn.status == 200
    target_recipe = json_response(conn, 200) |> List.first

    assert target_recipe["id"] == recipe.id
    assert target_recipe["name"] == recipe.name
  end

end

