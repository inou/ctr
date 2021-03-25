defmodule Ctr.Repo do
  use Ecto.Repo,
    otp_app: :ctr,
    adapter: Ecto.Adapters.Postgres
end
