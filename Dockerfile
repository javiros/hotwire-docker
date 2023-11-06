FROM ruby:3.1.0

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  yarn \
  npm

WORKDIR /usr/src/app

COPY . .

RUN bundle install
RUN npm install -g yarn