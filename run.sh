#!/usr/bin/env sh
if [[ -n "$1" && ( "$1" -gt 100 || "$1" -lt 1 ) ]]; then
  echo "Please enter a lossy quality value between 1 and 100 inclusive."
  exit 1;
elif [[ -n "$1" ]]; then
  echo "Setting lossy quality to $1."
  QUALITY=$1
else
  echo "Defaulting lossy quality to 80."
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
