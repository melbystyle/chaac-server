# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chaac_server,
  ecto_repos: [ChaacServer.Repo]

# Configures the endpoint
config :chaac_server, ChaacServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dFeBgU5pmbxZTeGIZrpc19f3kGeTgRSp5ppEwur56/6MjCaFOM3eNGCtbpRo/Qkq",
  render_errors: [view: ChaacServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChaacServer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :arc,
  storage: Arc.Storage.Local

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
