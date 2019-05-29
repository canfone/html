FROM phusion/baseimage:latest

MAINTAINER Cliff Richard Anfone <anfone.cliff@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive
RUN locale-gen en_US.UTF-8

ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm

COPY ./index.html /var/www/html/index.html

RUN chown -R 1000:1000 /var/www/html

WORKDIR /var/www/html
