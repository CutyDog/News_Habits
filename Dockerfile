FROM ruby:2.5

RUN apt-get update -qq &&\
  apt-get install -y build-essential \
  nodejs\
  mysql-server\
  mysql-client

WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN gem install bundler
RUN bundle install

RUN mkdir -p tmp/sockets

# COPY . /myapp


# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
# EXPOSE 3000


# CMD ["rails", "server", "-b", "0.0.0.0"]