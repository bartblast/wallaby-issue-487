defmodule WallabyIssue487Web.Router do
  use WallabyIssue487Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WallabyIssue487Web do
    pipe_through :browser

    get "/", PageController, :index

    live "/sign-up", SignUpLive
    live "/dashboard", DashboardLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", WallabyIssue487Web do
  #   pipe_through :api
  # end
end
