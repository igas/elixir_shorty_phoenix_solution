defmodule ShortyPhoenix.LinkController do
  use ShortyPhoenix.Web, :controller

  import ShortyPhoenix.Router.Helpers, only: [link_url: 3]

  plug :action

  def get(conn, %{"code" => code}) do
    conn
    |> put_status(301)
    |> redirect(external: Link.get(code))
  end

  def expand(conn, %{"code" => code}) do
    text(conn, Link.expand(code))
  end

  def statistics(conn, %{"code" => code}) do
    text(conn, Link.statistics(code))
  end

  def shorten(conn, %{"url" => url}) do
    code = Base62.encode(Link.add(url))
    text(conn, link_url(conn, :get, code))
  end
end
