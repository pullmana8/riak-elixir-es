# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gentoo,
  ecto_repos: [Gentoo.Repo]

# Configures the endpoint
config :gentoo, GentooWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5O6TfMSkq+wZ/48p3/lU2jXbCe3Mt1kXJrz6U4FGVtWENIwvCvsQo3eFjszKCDbB",
  render_errors: [view: GentooWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Gentoo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
