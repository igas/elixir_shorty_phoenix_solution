defmodule ShortyPhoenix.Endpoint do
  use Phoenix.Endpoint, otp_app: :shorty_phoenix

  plug Plug.Logger

  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded],
    pass: ["*/*"]

  plug Plug.Head

  plug :router, ShortyPhoenix.Router
end
