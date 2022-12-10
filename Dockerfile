############################################################
# Dockerfile to run NGINX with PHP 8.1 
# Based on Alpine 3.17
############################################################

FROM alpine:3.17

MAINTAINER Rumman Zaman (altrgeek)

ENV DEBUG=false

EXPOSE 8888

WORKDIR /app/

RUN apk add --no-cache tini \
    nginx \
    ca-certificates \
    php81-fpm \
    php81-common \
    php81-xml \
    php81-pdo \
    php81-phar \
    php81-openssl \
    php81-pdo_mysql \
    php81-mysqli \
    php81-gd \
    php81-iconv \
    python3

COPY ./php81 /app/

RUN mv /app/nginx.conf /etc/nginx/nginx.conf && \
    mkdir -p /etc/php/ && \
    mv /app/php-fpm.conf /etc/php/php-fpm.conf && \
    mkdir -p /tmp/nginx

ENTRYPOINT ["/sbin/tini", "--", "python", "/app/run.py"]
