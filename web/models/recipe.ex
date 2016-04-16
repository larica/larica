defmodule Larica.Recipe do
  use Larica.Web, :model

  schema "recipes" do
    field :name, :string
    field :preparation_time, :integer
    field :portions, :integer
    field :microwave, :boolean, default: false
    field :state, :string

    timestamps
  end

  @required_fields ~w(name preparation_time portions microwave state)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
