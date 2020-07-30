#!/usr/bin/env sh

docker stop webp-image-converter
docker rm webp-image-converter || true

docker build . -t 'webp-image-converter'

docker run \
--name webp-image-converter \
-v ${PWD}/output:/app/output \
webp-image-converter
