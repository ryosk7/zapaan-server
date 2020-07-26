FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs mariadb-client
RUN mkdir /zapaan
WORKDIR /zapaan
COPY zapaan/Gemfile /zapaan/Gemfile
COPY zapaan/Gemfile.lock /zapaan/Gemfile.lock
RUN bundle install -j4
COPY zapaan /web

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# puma.sockを配置するディレクトリを作成
RUN mkdir -p tmp/sockets

EXPOSE 3000