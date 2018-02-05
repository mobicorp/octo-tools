#!/usr/bin/env bash

IMAGE_NAME=mobidocker/octo-tools
VERSION=4.22.1
IMAGE_TAG=${VERSION}-docker

docker build --build-arg VERSION=${VERSION}  -t mobidocker/octo-tools:${IMAGE_TAG} .
