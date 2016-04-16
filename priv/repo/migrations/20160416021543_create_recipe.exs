defmodule Larica.Repo.Migrations.CreateRecipe do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :name, :string
      add :preparation_time, :integer
      add :portions, :integer
      add :microwave, :boolean, default: false
      add :state, :string

      timestamps
    end

  end
end
