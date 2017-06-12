#!/bin/bash

composer create-project --prefer-dist laravel/laravel /var/www/laravel

exec supervisord --nodaemon
