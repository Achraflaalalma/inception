FROM debian:11

# Install MariaDB
RUN apt-get update && apt-get install -y mariadb-server mariadb-client \
    && apt-get clean

# Expose the default MariaDB port
EXPOSE 3306

COPY tools/init-db.sh .
RUN chmod +x init-db.sh

# Start MariaDB
CMD ["./init-db.sh"] 