# Build and start containers
up:
	cd srcs/ && docker compose up --build -d

# Stop and remove containers
down:
	cd srcs/ && docker compose down --remove-orphans --volumes

# Build images
build:
	cd srcs/ && docker compose build --no-cache

# Restart containers
re: down up

# Show running containers
ps:
	cd srcs/ && docker compose ps

# Create the Docker secret
secrets:
	@echo "Creating secrets..."
	@docker secret create admin_pass srcs/secrets/admin_pass.txt
	@docker secret create db_pass srcs/secrets/db_pass.txt
	@docker secret create user_pass srcs/secrets/user_pass.txt

#swarm init
swarm:
	docker swarm init

#swarm leave
swarm-leave:
	docker swarm leave --force

# Remove the Docker secret
rm-secrets:
	@echo "Removing secrets..."
	@docker secret rm admin_pass db_pass user_pass

# Remove all containers, networks, and volumes
clean: down
	docker volume prune -f
	docker network prune -f
	docker rmi -f $(shell docker images -q)
