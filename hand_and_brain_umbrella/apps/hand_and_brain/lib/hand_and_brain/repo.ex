defmodule HandAndBrain.Repo do
  use Ecto.Repo,
    otp_app: :hand_and_brain,
    adapter: Ecto.Adapters.Postgres
end
