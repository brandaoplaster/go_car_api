defmodule GoCarApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      GoCarApi.Repo,
      # Start the Telemetry supervisor
      GoCarApiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: GoCarApi.PubSub},
      # Start the Endpoint (http/https)
      GoCarApiWeb.Endpoint
      # Start a worker by calling: GoCarApi.Worker.start_link(arg)
      # {GoCarApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: GoCarApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    GoCarApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
