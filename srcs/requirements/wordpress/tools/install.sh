#!/bin/bash

wp-cli.phar config create --dbname=testdb --dbuser=test --dbpass=theo123 --dbhost=mariadb --path=/var/www/wordpress --allow-root

wp-cli.phar core install --url="${URL}" --title="${TITLE}" --admin_user="${ADMIN_USER}" --admin_password="${ADMIN_PASSWORD}" --admin_email="theo.duprez.mathieu@gmail.com" --allow-root --path=/var/www/wordpress

mkdir -p /run/php

php-fpm7.4 -F