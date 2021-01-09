defmodule GoCarApi.Repo do
  use Ecto.Repo,
    otp_app: :go_car_api,
    adapter: Ecto.Adapters.Postgres
end
