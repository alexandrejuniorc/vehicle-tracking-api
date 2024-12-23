### DOCKER SETTINGS - BUILD AND CLEAN

docker/dev/build:
	docker compose up --build

docker/dev/rebuild:
	docker compose down
	docker compose up --build

docker/dev/clean:
	docker compose down --rmi all --volumes --remove-orphans

### DOCKER SETTINGS - START, STOP, AND RESTART

docker/dev/run:
	docker compose up -d

docker/dev/start:
	docker compose up

docker/dev/stop:
	docker compose down

docker/dev/restart:
	docker compose down
	docker compose up

### DOCKER SETTINGS - LOGS AND SHELL

docker/dev/logs:
	docker compose logs -f

docker/dev/shell:
	docker compose exec app bash
