# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :auto_finder,
  ecto_repos: [AutoFinder.Repo]

# Configures the endpoint
config :auto_finder, AutoFinderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n73yJSPyYnoFC6757as+KyMCIcpflcSas4tBS/iM5f67hJojDmbX0+uNJRgExubC",
  render_errors: [view: AutoFinderWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AutoFinder.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "EXF+KlVr"]

# Configures Elixir's Logger
config :logger, backends: [LoggerJSON]
config :auto_finder, AutoFinder.Repo, loggers: [{LoggerJSON.Ecto, :log, [:info]}]

config :logger_json, :backend,
  metadata: [:file, :line, :function, :module, :application, :httpRequest, :query],
  formatter: AutoFinder.LoggerFormatter

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
config :phoenix, :logger, false

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
