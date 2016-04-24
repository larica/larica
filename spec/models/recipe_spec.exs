defmodule Larica.RecipeSpec do
  use ESpec.Phoenix, model: Larica.Recipe
  alias Larica.Recipe

  let :valid_attrs, do: %{microwave: true, name: "some content", portions: 42, preparation_time: 42, state: "some content"}
  let :invalid_attrs, do: %{}

  context "valid changeset" do
    subject do: Recipe.changeset(%Recipe{}, valid_attrs)
    it do: should be_valid
  end
end
