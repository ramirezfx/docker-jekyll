FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y ruby-full build-essential zlib1g-dev
RUN gem install jekyll bundler
RUN mkdir /root/html
COPY Gemfile /root/html
RUN cd /root/html && bundle update

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
