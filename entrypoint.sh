#!/bin/bash

VERSION=5.4.*
CREATE=false

while [[ $# -gt 1 ]]; do
    param="$1"
    case $param in
        -c|--create)
        CREATE=true
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

if [[ $CREATE = true ]]; then
    composer create-project --prefer-dist laravel/laravel:$VERSION /var/www/laravel
fi

exec supervisord --nodaemon
