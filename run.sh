#!/usr/bin/env sh
if [[ -n "$1" ]]; then
  QUALITY=$1
else
  QUALITY=80
fi

docker stop webp-image-converter || true
docker rm webp-image-converter || true

docker build . -t 'webp-image-converter'

docker run \
--name webp-image-converter \
--env quality=$QUALITY \
-v ${PWD}/output:/app/output \
webp-image-converter
