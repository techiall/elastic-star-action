#!/usr/bin/env bash

version=$(cat .env | sed 's/ES_VERSION=\(.*\)$/\1/g')

docker-compose -f docker-compose-build.yml build
docker tag elastic-star-action_elasticsearch:latest ghcr.io/techiall/elasticsearch:${version}
docker push ghcr.io/techiall/elasticsearch:${version}
