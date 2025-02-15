#!/bin/bash

echo "Installing Wordpress..."

echo "listen = /run/php/php7.4-fpm.sock" >> /etc/php/7.4/fpm/pool.d/www.conf

php-fpm7.4 -F