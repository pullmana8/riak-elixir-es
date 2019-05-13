defmodule Gentoo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      Gentoo.Repo,
      # Start the endpoint when the application starts
      GentooWeb.Endpoint
      # Starts a worker by calling: Gentoo.Worker.start_link(arg)
      # {Gentoo.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Gentoo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    GentooWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
