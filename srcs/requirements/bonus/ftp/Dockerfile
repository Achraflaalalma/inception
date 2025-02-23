FROM debian:11

# Install vsftpd
RUN apt-get update && apt-get install -y vsftpd nano ftp && apt-get clean

# Create an FTP user with a home directory
RUN useradd -m -d /var/www/html -s /bin/bash ftpuser && \
    echo "ftpuser:frida2023" | chpasswd && \
    chown -R ftpuser:ftpuser /var/www/html && \
    chmod -R 755 /var/www/html

# Copy vsftpd configuration file
COPY conf/vsftpd.conf /etc/vsftpd.conf

# Create a directory for the pid file
RUN mkdir -p /var/run/vsftpd/empty

# Expose FTP port
EXPOSE 21

# # Start vsftpd
CMD ["vsftpd", "/etc/vsftpd.conf"]