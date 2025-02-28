FROM debian:11

# Install PHP and necessary extensions
RUN apt-get update && apt-get install -y \
    php-cli \
    php-mysqli \
    php-pdo \
    php-pdo-mysql \
    wget \
    && apt-get clean

# Create a directory for the web server
RUN mkdir -p /var/www/html

# Download Adminer
RUN wget https://www.adminer.org/latest.php -O /var/www/html/index.php

# Expose the port (you will access this in the browser)
EXPOSE 8080

# Start PHP’s built-in web server on port 8080
CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]
