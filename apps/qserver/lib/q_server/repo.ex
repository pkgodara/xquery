defmodule QServer.Repo do
  use Ecto.Repo,
    otp_app: :qserver,
    adapter: Ecto.Adapters.Postgres
end
