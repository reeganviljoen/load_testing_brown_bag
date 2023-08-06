#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && sudo  NEW_RELIC_API_KEY=NRAK-9M20RY7XQPKYO8VVA9FRO84XR9M NEW_RELIC_ACCOUNT_ID=4087803 NEW_RELIC_REGION=EU /usr/local/bin/newrelic install -y
