defmodule WallabyIssue487.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      WallabyIssue487.Repo,
      # Start the endpoint when the application starts
      WallabyIssue487Web.Endpoint
      # Starts a worker by calling: WallabyIssue487.Worker.start_link(arg)
      # {WallabyIssue487.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: WallabyIssue487.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    WallabyIssue487Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
