FROM ruby:latest
RUN apt-get update -qq
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app
RUN bundle exec jekyll build

EXPOSE 4000
