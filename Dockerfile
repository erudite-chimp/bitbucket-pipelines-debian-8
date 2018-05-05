FROM ubuntu:16.04
MAINTAINER Adam Tarnowsky

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y \
      mysql-server
      apache2 \
      php7.0 \
      php7.0-cli \
      libapache2-mod-php7.0 \
      php-apcu \
      php-xdebug \
      php7.0-gd \
      php7.0-json \
      php7.0-ldap \
      php7.0-mbstring \
      php7.0-mysql \
      php7.0-opcache \
      composer \
      unzip

ENV MYSQL_DATABASE=cpr-app-functional-test-db \
    MYSQL_USER=vagrant \
    MYSQL_PASS=vagrant \
    OS_LOCALE="en_US.UTF-8"
