FROM debian:11

# Install PHP and dependencies
RUN apt-get update && apt-get install -y \
    php7.4-fpm \
    php7.4-mysql \
    php7.4-gd \
    php7.4-xml \
    php7.4-mbstring \
    curl \
    unzip \
    wget \
    && apt-get clean

 # Change the listen directive to use port 9000 (TCP)
RUN sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 0.0.0.0:9000|' /etc/php/7.4/fpm/pool.d/www.conf

# Download WordPress
RUN mkdir -p /var/www/html

# Create necessary directories
RUN mkdir -p /run/php

# Download and install WordPress
RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xvf latest.tar.gz \
    && mv wordpress/* /var/www/html/ \
    && rm latest.tar.gz \
    && rm -d wordpress

# # Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose the PHP-FPM port
EXPOSE 9000


# Start PHP-FPM in the foreground
CMD ["php-fpm7.4", "-F"]
