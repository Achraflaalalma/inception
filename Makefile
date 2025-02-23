# Build and start containers
up:
	cd srcs/ && docker compose up --build -d

# Stop and remove containers
down:
	cd srcs/ && docker compose down --remove-orphans

# Build images
build:
	cd srcs/ && docker compose build --no-cache

# Restart containers
re: down up

# Show running containers
ps:
	cd srcs/ && docker compose ps

# Remove all containers, networks, and volumes
clean: down
	docker volume prune -f
	docker network prune -f
	docker rmi -f $(shell docker images -q)