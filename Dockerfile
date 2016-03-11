FROM ruby:latest

COPY . /
RUN bundle install

