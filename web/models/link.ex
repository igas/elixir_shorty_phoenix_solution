defmodule Link do
  use ShortyPhoenix.Web, :model

  alias ShortyPhoenix.Repo
  alias Ecto.Adapters.SQL

  @primary_key {:code, :integer, [read_after_writes: true]}

  schema "links" do
    field :url, :string
    field :open_count, :integer, default: 0
  end

  def expand(code) do
    find(code).url
  end

  def find(code) do
    Repo.get(Link, Base62.decode!(code))
  end

  def get(code) do
    SQL.query Repo,
      "UPDATE links SET open_count = open_count + 1 WHERE code = $1",
      [Base62.decode!(code)]
    expand(code)
  end

  def statistics(code) do
    find(code).open_count
  end

  def add(url) do
    Repo.insert(%Link{url: url}).code
  end
end
