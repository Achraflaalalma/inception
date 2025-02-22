FROM debian:11

# Install vsftpd
# RUN apt-get update && apt-get install -y vsftpd && apt-get clean

# # Copy the vsftpd configuration file
# COPY vsftpd.conf /etc/vsftpd.conf

# # Create an FTP user with a home directory
# RUN useradd -m -d /var/www/html -s /bin/bash ftpuser && \
#     echo "ftpuser:password" | chpasswd

# # Ensure correct permissions
# RUN chmod 755 /var/www/html

# # Create required directory
# RUN mkdir -p /var/run/vsftpd/empty

# # Expose FTP ports
# EXPOSE 21 21000-21010

# # Start vsftpd
# CMD ["vsftpd", "/etc/vsftpd.conf"]

CMD ["tail", "-f", "/dev/null"]