defmodule Larica.RecipeTest do
  use Larica.ModelCase

  alias Larica.Recipe

  @valid_attrs %{microwave: true, name: "some content", portions: 42, preparation_time: 42, state: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Recipe.changeset(%Recipe{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Recipe.changeset(%Recipe{}, @invalid_attrs)
    refute changeset.valid?
  end
end
