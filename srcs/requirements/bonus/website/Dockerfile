FROM debian:11

# Install dependencies
RUN apt-get update && apt-get install -y nginx && apt-get clean

# Copy the website files to the web server directory
COPY ./ /var/www/html/

# Expose the default HTTP port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]