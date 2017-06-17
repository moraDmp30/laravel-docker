FROM richarvey/nginx-php-fpm:php7
LABEL autor = "Daniel Mora Pastor (mora@square1.io), Jose Vicente Orts Romero (vince@square1.io)"

RUN apk update && \
    apk add supervisor && \
    apk add php7-tokenizer

COPY entrypoint.sh /
COPY default.conf /etc/nginx/sites-available/default.conf

WORKDIR /var/www/laravel

VOLUME /var/www/laravel

ENTRYPOINT ["/entrypoint.sh"]
