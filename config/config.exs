# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :crowlshopee,
  ecto_repos: [Crowlshopee.Repo]

# Configures the endpoint
config :crowlshopee, CrowlshopeeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "36/ZNPx5qqQiJ5dx97M0pS+XBYeqgsIAowhVCRvAiNVwHC73ceM1p3yECak1oo0e",
  render_errors: [view: CrowlshopeeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Crowlshopee.PubSub,
  live_view: [signing_salt: "Mz91C1Ny"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
