# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :hand_and_brain,
  ecto_repos: [HandAndBrain.Repo]

config :hand_and_brain_web,
  ecto_repos: [HandAndBrain.Repo],
  generators: [context_app: :hand_and_brain]

# Configures the endpoint
config :hand_and_brain_web, HandAndBrainWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tM4xaxWwnuuKttwaV2uuBGE5Cz2yPxOSv4iOJIUvpyrhSQT2RBoL0iPC9s0M8Uwa",
  render_errors: [view: HandAndBrainWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HandAndBrain.PubSub,
  live_view: [signing_salt: "8bG/eRxu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
