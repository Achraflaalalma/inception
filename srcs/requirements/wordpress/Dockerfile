FROM debian:11

# Install PHP and dependencies
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

RUN echo "cgi.fix_pathinfo=0" >> /etc/php/7.4/fpm/php.ini

#Configure the PHP-FPM pool (for better performance with WordPress)
RUN echo "[www]" > /etc/php/7.4/fpm/pool.d/www.conf && \
    echo "user = www-data" >> /etc/php/7.4/fpm/pool.d/www.conf && \
    echo "group = www-data" >> /etc/php/7.4/fpm/pool.d/www.conf && \
    echo "listen = /var/run/php/php7.4-fpm.sock" >> /etc/php/7.4/fpm/pool.d/www.conf

EXPOSE 9000

CMD ["php-fpm7.4", "-F"]