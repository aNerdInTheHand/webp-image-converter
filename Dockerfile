#!/usr/bin/env sh
FROM openjdk:8-jdk-alpine

WORKDIR /app

RUN apk update && \
    apk upgrade -U && \
    apk add ca-certificates ffmpeg libwebp libwebp-tools && \
    rm -rf /var/cache/*

COPY build/ ./

ARG quality=50
ENV quality=${quality}

CMD [ "sh", "convert.sh" ]
