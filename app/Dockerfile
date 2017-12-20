FROM ruby:2.5.0-rc1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails
WORKDIR /rails
COPY Gemfile /rails/Gemfile
COPY Gemfile.lock /rails/Gemfile.lock
RUN bundle install
COPY . /rails
