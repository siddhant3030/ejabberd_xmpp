# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :testapp,
  ecto_repos: [Testapp.Repo]

# Configures the endpoint
config :testapp, TestappWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J68crOzh+F0GxIy//W23fG087PzL5/XmRfe1gbHOUv0f6/iHpunMCcUlZQ+OZMzc",
  render_errors: [view: TestappWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Testapp.PubSub,
  live_view: [signing_salt: "2FPCT2bY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :ejabberd,
  file: "config/ejabberd.yml",
  log_path: "logs/ejabberd.log"

config :mnesia,
  dir: "mnesiadb/"

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
