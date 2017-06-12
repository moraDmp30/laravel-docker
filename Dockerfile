FROM richarvey/nginx-php-fpm:php7
LABEL autor = "Daniel Mora Pastor"

RUN apk update && \
    apk add supervisor

COPY entrypoint.sh /
COPY default.conf /etc/nginx/sites-available/default.conf

WORKDIR /var/www/laravel

VOLUME /var/www/laravel

ENTRYPOINT ["/entrypoint.sh"]
