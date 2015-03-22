defmodule ShortyPhoenix.PageController do
  use ShortyPhoenix.Web, :controller

  plug :action

  def index(conn, _params) do
    text conn, "Shorty"
  end
end
