### DOCKER SETTINGS

docker/dev/build:
	@docker compose -f docker-compose.dev.yml up --build

docker/dev/rebuild:
	@docker compose -f docker-compose.dev.yml down
	@docker compose -f docker-compose.dev.yml up --build

## Start the development environment helpers: mongodb, api
docker/dev/start:
	@docker compose -f docker-compose.dev.yml up -d

## Stop the development environment helpers
docker/dev/stop:
	@docker compose -f docker-compose.dev.yml stop

docker/dev/restart:
	@docker compose -f docker-compose.dev.yml down --volumes --remove-orphans
	@docker compose -f docker-compose.dev.yml up -d
	@sleep 2
	@pnpm prisma migrate deploy

docker/dev/clean:
	@docker compose -f docker-compose.dev.yml down --rmi all --volumes --remove-orphans

docker/dev/shell:
	@docker compose -f docker-compose.dev.yml exec app bash