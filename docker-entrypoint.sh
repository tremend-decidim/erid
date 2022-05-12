#!/bin/sh
# https://stackoverflow.com/a/38732187/1935918
set -e
set -x

if [ -f /code/tmp/pids/server.pid ]; then
  rm /code/tmp/pids/server.pid
fi

if [ ! -z "$SENTRY_RELEASE_URL" ]; then
  curl $SENTRY_RELEASE_URL -X POST -H 'Cotent-Type: application/json' -d "{\"version\": \"$(git rev-parse HEAD)\"}"
fi

gem install bundler -v '2.1.4'

bundle install --quiet
bundle exec rake db:migrate

if [ "$CRON_ENV" = "true" ]; then
  bundle exec whenever --update-crontab
  service cron start && exec bundle exec "$@"
else
  exec bundle exec "$@"
fi
