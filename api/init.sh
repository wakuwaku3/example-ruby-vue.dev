#!/bin/bash

git config --global user.name ${GITHUB_USER_NAME}
git config --global user.email ${GITHUB_EMAIL}

if [ ! -d /repo/.git ]; then
  git clone https://${GITHUB_USER_NAME}:${GITHUB_TOKEN}@github.com/wakuwaku3/example-ruby.api.git repo;
fi

cd /repo/
bundle config set path 'vendor/bundle'
bundle install
bundle exec rake db:create
bundle exec rails db:migrate
bundle exec rails server -b 0.0.0.0 -p 8080
