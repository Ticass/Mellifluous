# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :twitterclone,
  ecto_repos: [Twitterclone.Repo]

# Configures the endpoint
config :twitterclone, TwittercloneWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8qGha6Ka7m+2eqIHTQYUqtq0yv8A3fi89b+l7tzWxFrsbIXuF3+s5TSq6bIwxlmo",
  render_errors: [view: TwittercloneWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Twitterclone.PubSub,
  live_view: [signing_salt: "ACeGEs54"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
