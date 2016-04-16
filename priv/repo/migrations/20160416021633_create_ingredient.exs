defmodule Larica.Repo.Migrations.CreateIngredient do
  use Ecto.Migration

  def change do
    create table(:ingredients) do
      add :name, :string
      add :metrics, :string

      timestamps
    end

  end
end
