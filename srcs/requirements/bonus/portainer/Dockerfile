# Use the official Ubuntu base image
FROM debian:11

# Update and install required dependencies
RUN apt update && apt install -y wget

# Download and install Portainer
RUN wget https://github.com/portainer/portainer/releases/download/2.27.0/portainer-2.27.0-linux-amd64.tar.gz -P /tmp \
    && tar -xvf /tmp/portainer-2.27.0-linux-amd64.tar.gz -C /tmp \
    && rm -rf /tmp/portainer-2.27.0-linux-amd64.tar.gz && \
    mv /tmp/portainer/portainer /usr/local/bin

# Expose the Portainer port (default is 9000)
EXPOSE 9000

# Start the Portainer container using Docker
CMD ["portainer", "-H", "unix:///var/run/docker.sock"]

