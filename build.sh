#!/usr/bin/env bash

version=$(cat .env | sed 's/ES_VERSION=\(.*\)$/\1/g')

docker-compose -f docker-compose-build.yml build
docker tag elastic-star-action_elasticsearch:latest dghcr.io/techiall/elastic-star-action/es:${version}
docker push ghcr.io/techiall/elastic-star-action/es:${version}
