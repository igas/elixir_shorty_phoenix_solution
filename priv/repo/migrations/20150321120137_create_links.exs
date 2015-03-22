defmodule ShortyPhoenix.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def up do
    create table(:links, primary_key: false) do
      add :code, :serial, null: false, primary_key: true
      add :url, :string, null: false
      add :open_count, :integer, null: false, default: 0
    end
    execute "ALTER SEQUENCE links_code_seq RESTART WITH 3844 START WITH 3844 MINVALUE 3844;"
  end

  def down do
    drop table(:links)
  end
end
