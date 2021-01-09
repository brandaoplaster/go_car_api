FROM elixir:latest

RUN apt-get update -qq && apt-get install -y libpq-dev && apt-get install -y build-essential inotify-tools erlang-dev erlang-parsetools apt-transport-https ca-certificates && apt-get update

RUN mix local.hex --force && mix local.rebar --force

RUN mix archive.install hex phx_new 1.5.7 --force

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get install -y nodejs

ENV INSTALL_PATH /go_car_api

WORKDIR $INSTALL_PATH