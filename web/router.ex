defmodule GuessWho.Router do
  use GuessWho.Web, :router

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

  scope "/", GuessWho do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", GuessWho do
    resources "/users", UserController, except: [:new, :edit] do
      resources "/states", StateController, except: [:new, :edit]
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", GuessWho do
  #   pipe_through :api
  # end
end
