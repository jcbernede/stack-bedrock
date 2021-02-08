.PHONY: composer install-bedrock upd

help:           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

# to install wp-packgist write
# exemple make composer arg="wpackagist-plugin/wp-migrate-db":"1.0.17"

composer: ## launch composer container to install package "must be modified"
	docker run -ti --rm --volume ${PWD}/bedrock:/app composer require $(arg)

install-bedrock: ## create project bedrock
	docker run  --rm --volume ${PWD}:/app composer composer create-project roots/bedrock

up: ## launch all docker container
	docker-compose up
