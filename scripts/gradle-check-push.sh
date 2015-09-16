#!/usr/bin/env bash

set -eux

docker login -u ${DOCKER_HUB_USER} -p ${DOCKER_HUB_KEY} -e ${DOCKER_HUB_EMAIL}
gradle clean check pushImage
rm ~/.dockercfg