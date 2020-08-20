FROM elixir:1.10-alpine

RUN mix local.hex --force \
  && mix archive.install --force hex phx_new \
  && mix local.rebar --force \
  && apk update \
  && apk add build-base npm inotify-tools git openssh

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

EXPOSE 4000
