defmodule Larica.Factory do
  # with Ecto
  use ExMachina.Ecto, repo: Larica.Repo
  alias Larica.Recipe

  def recipe_factory do
    %Recipe{
      name: "Farofa",
      preparation_time: 10,
      portions: 2,
      microwave: :true,
      state: "active"
    }
  end

end
