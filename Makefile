up: docker-up
down: docker-down
restart: docker-down docker-up
init: docker-init app-init
docker-init: docker-down-clear docker-pull docker-build docker-up
app-init: app-composer-install

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

app-composer-install:
	docker-compose run --rm --no-deps php-fpm composer install

app-composer-update:
	docker-compose run --rm --no-deps php-fpm composer update

cache-clear:
	docker-compose run --rm --no-deps php-fpm php bin/console cache:clear

app-bash:
	docker-compose exec php-fpm sh
