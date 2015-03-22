use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :shorty_phoenix, ShortyPhoenix.Endpoint,
  secret_key_base: "g33eD/dvzFtYIGo5bN7yHAqfG61iM99P7Grl090haeqyEoj9U6CvDT7oZsOMVR0X"

# Configure your database
config :shorty_phoenix, ShortyPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "shorty_phoenix_dev"
