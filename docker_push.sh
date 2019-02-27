#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag $1 ${DOCKER_USERNAME}/$1
docker push ${DOCKER_USERNAME}/$1