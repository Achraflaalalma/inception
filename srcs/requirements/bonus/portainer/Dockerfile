# Use the official Ubuntu base image
FROM debian:11

# Update and install required dependencies
RUN apt update && apt install -y wget apache2-utils

# Download and install Portainer
RUN wget https://github.com/portainer/portainer/releases/download/2.25.1/portainer-2.25.1-linux-amd64.tar.gz -P /tmp \
    && tar -xvf /tmp/portainer-2.25.1-linux-amd64.tar.gz -C /tmp \
    && rm -rf /tmp/portainer-2.25.1-linux-amd64.tar.gz

# Expose the Portainer port (default is 9000)
EXPOSE 9000

# copy the script to start the container
COPY tools/script.sh /tmp/script.sh

# give permissions to the script
RUN chmod +x /tmp/script.sh

# Start the script service
CMD ["/tmp/script.sh"]