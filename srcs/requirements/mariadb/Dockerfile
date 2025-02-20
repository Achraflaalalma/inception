FROM debian:11

# Install MariaDB
RUN apt-get update && apt-get install -y mariadb-server mariadb-client \
    && apt-get clean

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/.

COPY init.sql /etc/mysql/init.sql 

# Create necessary directory for the socket file
RUN mkdir -p /run/mysqld && chown mysql:mysql /run/mysqld

# Expose the default MariaDB port
EXPOSE 3306

# Start MariaDB
CMD ["mysqld"] 