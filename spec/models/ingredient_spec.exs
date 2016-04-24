defmodule Larica.IngredientSpec do
  use ESpec.Phoenix, model: Larica.Ingredient
  alias Larica.Ingredient

  let :valid_attrs, do:  %{metrics: "some content", name: "some content"}
  let :invalid_attrs, do: %{}

  context "valid changeset" do
    subject do: Ingredient.changeset(%Ingredient{}, valid_attrs)
    it do: should be_valid
  end
end
