#!/bin/bash

VERSION=5.4.*

while [[ $# -gt 1 ]]; do
    param="$1"
    case $param in
        -c|--create)
        CREATE=1
        shift
        ;;
        -v|--version)
        VERSION="$2"
        shift
        ;;
        *)
        #Uknown command
        ;;
    esac
    shift
done

if [[ $CREATE ]]; then
    composer create-project --prefer-dist laravel/laravel:$VERSION /var/www/laravel
fi

exec supervisord --nodaemon
