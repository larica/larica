[![Build Status](https://travis-ci.org/larica/larica.svg?branch=master)](https://travis-ci.org/larica/larica)
[![Coverage Status](https://coveralls.io/repos/github/larica/larica/badge.svg?branch=master)](https://coveralls.io/github/larica/larica?branch=master)

# Larica

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix





schema "recipes" do
	field :name, :string
	field :preparation_time, :integer
	field :portions, :integer
	field :microwave, :boolean, default: false
	field :state, :string

	timestamps
end

schema "ingredients" do
	field :name, :string
	field :metrics, :string

	timestamps
end

schema "recipe_ingredients" do
	belongs_to :recipe, Larica.Recipe
	belongs_to :ingredient, Larica.Ingredient

	timestamps
end

schema "users" do
	field :name, :string
	field :email, :string
	field :state, :string
	field :password_token, :string
	
	timestamps
end