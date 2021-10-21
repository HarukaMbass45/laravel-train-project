up:
	docker compse up -d
build:
	docker compose build --no-cache --force-rm
laravel-install:
	docker compose exec app composer create-project --prefer-dist laravel/laraved .
create-project:
	mkdir -p backend
	@make build
	@make up
	@make laravel-install
	docker compose exec app php artisan key:generate