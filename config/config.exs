# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :go_car_api,
  ecto_repos: [GoCarApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :go_car_api, GoCarApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3v5p7Tr5TzDsf8vtxQyVvXYw9XPFx8/AA4n2sWBqss/zKr6bJnKxynxawDJjGgz+",
  render_errors: [view: GoCarApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: GoCarApi.PubSub,
  live_view: [signing_salt: "p7HMiQ1B"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
