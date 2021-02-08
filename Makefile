.PHONY: composer

# to install wp-packgist write
# exemple make composer arg="wpackagist-plugin/wp-migrate-db":"1.0.17"

composer:
	docker run -ti --rm --volume ${PWD}/bedrock:/app composer require $(arg)