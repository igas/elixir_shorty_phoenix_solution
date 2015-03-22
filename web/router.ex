defmodule ShortyPhoenix.Router do
  use Phoenix.Router

  scope "/", ShortyPhoenix do
    get "/", PageController, :index
    get "/:code", LinkController, :get
    get "/expand/:code", LinkController, :expand
    get "/statistics/:code", LinkController, :statistics
    post "/shorten", LinkController, :shorten
  end
end
