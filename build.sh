#!/usr/bin/env bash

version=$(cat .env | sed 's/ES_VERSION=\(.*\)$/\1/g')

docker-compose -f docker-compose-build.yml build
docker tag elastic-star-action_elasticsearch:latest docker.pkg.github.com/techial1042/elastic-star-action/es:${version}
docker push docker.pkg.github.com/techial1042/elastic-star-action/es:${version}
