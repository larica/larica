defmodule RecipeSerializer do
  use Remodel

  attributes [:id, :name, :preparation_time, :portions, :microwave, :state]

end
