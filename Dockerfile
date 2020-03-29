FROM elixir:1.10-alpine

RUN mix local.hex --force \
  && mix archive.install --force hex phx_new 1.4.16 \
  && mix local.rebar --force \
  && apk update \
  && apk add npm inotify-tools git openssh ruby \
  && gem install htmlbeautifier

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

EXPOSE 4000
