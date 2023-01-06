# Recipes
VALIDPROJECT ?= src/*
ENV ?= src/.env

all: $(VALIDPROJECT) $(ENV) init 

$(ENV):
	@cp src/.env.example src/.env
$(VALIDPROJECT):
	composer create-project --prefer-dist laravel/laravel src
init:
	@docker-compose up -d
build:
	@docker-compose up -d --build
key-generate:
	@docker exec -it ms-mail php artisan key:generate
compose:
	@docker exec -it ms-mail composer install
npm:
	@docker exec -it ms-mail npm install
migrate:
	@docker exec -it ms-mail php artisan migrate
seed:
	@docker exec -it ms-mail php artisan db:seed
docker-login:
	@docker exec -it ms-mail bash

.PHONY: all init 
