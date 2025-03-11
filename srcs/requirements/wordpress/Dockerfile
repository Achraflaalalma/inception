FROM debian:11

#Install PHP and dependencies
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

 # Change the listen directive to use port 9001 (TCP)
RUN sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 0.0.0.0:9001|' /etc/php/7.4/fpm/pool.d/www.conf

# Download WordPress
RUN mkdir -p /var/www/html
RUN chmod -R 777 /var/www/html/

# Create necessary directories
RUN mkdir -p /run/php

# Copy the script to the container and make it executable
COPY tools/script.sh .
RUN chmod +x script.sh

# Expose the PHP-FPM port
EXPOSE 9000

# Start PHP-FPM in the foreground
CMD ["./script.sh"]
