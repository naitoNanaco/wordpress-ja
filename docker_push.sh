#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag $1 ${DOCKER_USERNAME}/$1
image_name='wordpress-ja:'; tag_v=${1//${image_name}/${image_name}${VERSION}-}
docker tag $1 ${DOCKER_USERNAME}/${tag_v}
docker push ${DOCKER_USERNAME}/$1
docker push ${DOCKER_USERNAME}/${tag_v}