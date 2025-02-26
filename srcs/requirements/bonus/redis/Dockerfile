FROM debian:11

#Install dependencies
RUN apt-get update && apt-get install -y redis && apt-get clean

# Expose the Redis port
EXPOSE 6379

# Run Redis
CMD [ "redis-server", "--protected-mode", "no"]