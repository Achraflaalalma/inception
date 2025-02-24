FROM debian:11

#Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    tcl \
    curl \
    && apt-get clean

# Install Redis from source
RUN curl -sL http://download.redis.io/redis-stable.tar.gz | tar xz \
    && cd redis-* \
    && make \
    && make install

# # Create the necessary Redis configuration directory
# RUN mkdir -p /etc/redis
# # Copy the configuration file
# COPY conf/redis.conf /etc/redis/redis.conf

# Expose the Redis port
EXPOSE 6379

# Run Redis
CMD [ "redis-server", "--protected-mode", "no"]