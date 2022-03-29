defmodule CdGigalixir.Repo do
  use Ecto.Repo,
    otp_app: :cd_gigalixir,
    adapter: Ecto.Adapters.Postgres
end
