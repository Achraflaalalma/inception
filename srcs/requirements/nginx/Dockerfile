FROM debian:11

# Install dependencies
RUN apt-get update \
    && apt-get install -y \
    nginx \
    openssl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# # Create SSL certificates (for testing, generate self-signed certs)
RUN mkdir -p /etc/ssl/private /etc/ssl/certs \
    && openssl req -x509 -newkey rsa:4096 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -days 365 -nodes -subj "/CN=localhost"

# # Configure NGINX to use TLSv1.2
COPY requirements/nginx/conf/my.conf /etc/nginx/nginx.conf

# Expose ports (HTTP and HTTPS)
EXPOSE 443

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]