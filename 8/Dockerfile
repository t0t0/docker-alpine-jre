FROM alpine:3.3
MAINTAINER Toon Lamberigts & Tomas Vercautter

ENV JAVA_VERSION=8.77.03-r0

RUN apk --update --no-cache add --virtual .dependencies \
    make \
    wget \
    ca-certificates \
    musl-dev \
    tar && \
    apk add openjdk8-jre=$JAVA_VERSION
