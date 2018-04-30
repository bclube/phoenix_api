FROM elixir:latest

RUN mix local.hex --force \
    && mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez \
    && mix local.rebar --force \
    && apt-get update \
    && apt-get install -y inotify-tools

WORKDIR /app
