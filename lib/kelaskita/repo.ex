defmodule Kelaskita.Repo do
  use Ecto.Repo,
    otp_app: :kelaskita,
    adapter: Ecto.Adapters.MyXQL
end
