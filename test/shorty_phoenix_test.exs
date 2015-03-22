defmodule ShortyPhoenixTest do
  use ExUnit.Case, async: true
  use Plug.Test

  test "/" do
    response = conn(:get, "/") |> ShortyPhoenix.Endpoint.call([])
    assert response.status == 200
    assert response.resp_body == "Shorty"
  end
end
