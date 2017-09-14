#!/bin/bash

IMAGE_NAME=mobidocker/octo-tools
VERSION=4.22.1

docker build --build-arg VERSION=${VERSION}  -t mobidocker/octo-tools:${VERSION}
