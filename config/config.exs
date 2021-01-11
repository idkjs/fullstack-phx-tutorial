# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tutorial,
  ecto_repos: [Tutorial.Repo]

# Configures the endpoint
config :tutorial, TutorialWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YeGBPnS9aTje6zJ2617lNh3uPBvlmUq06pKKu6XPmTS8F+CbEm1J8hW2+TxGoycY",
  render_errors: [view: TutorialWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Tutorial.PubSub,
  live_view: [signing_salt: "t1fBoj3w"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
