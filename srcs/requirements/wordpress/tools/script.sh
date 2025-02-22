#!/bin/bash

cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$(cat /run/secrets/db_pass) --dbhost=$DB_HOST --allow-root
wp core install --url=$DOMAIN --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$(cat /run/secrets/admin_pass) --admin_email=$ADMIN_EMAIL --allow-root
wp user create $USER_NAME $USER_EMAIL --role=author --user_pass=$(cat /run/secrets/user_pass) --allow-root

php-fpm7.4 -F