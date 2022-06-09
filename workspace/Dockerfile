
FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /var/www

RUN apt-get update && apt-get install -y curl\
    git \
    php7.4 \
    nodejs \ 
    npm \
    nano \
    supervisor \
    php7.4-mysql \
    php7.4-xml \
    php7.4-gd \
    php7.4-zip \
    php7.4-mbstring \
    php7.4-curl \
    php7.4-xdebug \
    cron && which cron && \
    rm -rf /etc/cron.*/*  \
    zlib1g-dev  

#Intall composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

USER root

COPY supervisord.conf /etc/supervisor/supervisord.conf
CMD ["/usr/bin/supervisord"]