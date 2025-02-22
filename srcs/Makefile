# Build and start containers
up:
	docker compose up --build -d

# Stop and remove containers
down:
	docker compose down --remove-orphans

# Build images
build:
	docker compose build --no-cache

# Restart containers
re: down up

# Show running containers
ps:
	docker compose ps

# Remove all containers, networks, and volumes
clean: down
	docker volume prune -f
	docker network prune -f
	docker rmi -f $(shell docker images -q)
