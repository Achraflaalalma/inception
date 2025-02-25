FROM debian:11

# Install vsftpd
RUN apt-get update && apt-get install -y vsftpd nano ftp && apt-get clean

# Copy vsftpd configuration file
COPY conf/vsftpd.conf /etc/vsftpd.conf

# Create a directory for the pid file
RUN mkdir -p /var/run/vsftpd/empty

# Copy the script to the container and make it executable
COPY tools/script.sh .

# Give permissions to the script
RUN chmod +x script.sh

# Expose FTP port
EXPOSE 21

CMD ["./script.sh"]