defmodule Larica.Router do
  use Larica.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Larica do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api/v1", as: :api_v1 do
    pipe_through :api 
    resources "/recipes", Larica.API.V1.RecipeController, except: [:delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Larica do
  #   pipe_through :api
  # end
end
