defmodule Larica.API.V1.RecipeRequestsSpec do
  use ESpec.Phoenix, request: Larica.Endpoint
  import Larica.Factory

  describe "GET /api/v1/recipes" do

    context "Without data" do
      it "returns an empty array" do
        conn = get conn(), "/api/v1/recipes"

        target_recipe = json_response(conn, 200)

        expect conn.status |> to(eq 200)
        expect target_recipe |> to(eq [])
      end
    end

    context "With data" do
      let! :recipe, do:  insert(:recipe)
      it "returns an array with a recipe" do
        conn = get conn(), "/api/v1/recipes"

        target_recipe = json_response(conn, 200) |> List.first

        expect conn.status |> to(eq 200)
        expect target_recipe["id"] |> to(eq recipe.id)
        expect target_recipe["name"] |> to(eq recipe.name)
      end
    end

  end
end

