FROM ruby:2.5
LABEL Name=my_app Version=0.0.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /my_app
WORKDIR /my_app
COPY . /my_app
RUN bundle install
