defmodule Gentoo.Repo do
  use Ecto.Repo,
    otp_app: :gentoo,
    adapter: Ecto.Adapters.Postgres
end
