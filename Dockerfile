FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs mariadb-client
RUN mkdir /zapaan
WORKDIR /zapaan
ADD zapaan/Gemfile /zapaan/Gemfile
ADD zapaan/Gemfile.lock /zapaan/Gemfile.lock
RUN bundle install
ADD zapaan /web
# puma.sockを配置するディレクトリを作成
RUN mkdir -p tmp/sockets
