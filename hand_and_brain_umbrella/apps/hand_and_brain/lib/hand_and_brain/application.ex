defmodule HandAndBrain.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      HandAndBrain.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: HandAndBrain.PubSub}
      # Start a worker by calling: HandAndBrain.Worker.start_link(arg)
      # {HandAndBrain.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: HandAndBrain.Supervisor)
  end
end
