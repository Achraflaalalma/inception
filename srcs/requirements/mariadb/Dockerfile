FROM debian:11

# Install MariaDB
RUN apt-get update && apt-get install -y mariadb-server mariadb-client \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create necessary directory for the socket file
RUN mkdir -p /run/mysqld && chown mysql:mysql /run/mysqld

# Expose the default MariaDB port
EXPOSE 3306

# Start MariaDB
CMD ["mysqld"] 