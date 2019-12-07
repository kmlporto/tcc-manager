FROM ruby:2.6.4

RUN apt-get update
RUN apt-get install -y build-essential && apt-get install -y nodejs
RUN gem install pry && gem install rails -v 5.2.3

RUN mkdir docker
WORKDIR /docker
COPY Gemfile /docker
RUN bundle install
RUN chown 1000:1000 -R /docker