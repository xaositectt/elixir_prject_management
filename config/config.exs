# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :project_management,
  ecto_repos: [ProjectManagement.Repo]

# Configures the endpoint
config :project_management, ProjectManagementWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QZuv2c+C5ySoqdORRuQObUQZdDjYeRCPdKZhK5qLTGrssWOGIN1/YDaafv2oSRJH",
  render_errors: [view: ProjectManagementWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProjectManagement.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

config :phoenix, :format_encoders,
  "json-api": Poison

config :plug, :mimes, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
