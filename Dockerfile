FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /mensajeria
WORKDIR /mensajeria

ADD Gemfile /mensajeria/Gemfile
ADD Gemfile.lock /mensajeria/Gemfile.lock

RUN bundle install

ADD . /mensajeria

RUN chown -R $USER:$USER .

RUN rm -rf /mensajeria/tmp/pids/server.pid
