FROM debian:11

#Install PHP and dependencies
RUN apt-get update && apt-get install -y \
    php-fpm \
    php-mysql \
    php-gd \
    php-xml \
    php-mbstring \
    curl \
    unzip \
    wget \
    && apt-get clean

# Step 4: Create the necessar
RUN mkdir -p /var/www/html

# Install WordPress
RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xvf latest.tar.gz \
    && mv wordpress /var/www/html/ \
    && rm latest.tar.gz

# # Copy the configuration file
# COPY wp-config.php /var/www/html/wordpress/wp-config.php

# EXPOSE 9000

# CMD ["php-fpm"]