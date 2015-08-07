#!/bin/bash
set -e

cd $(dirname $0)

export DOCKER_IMAGE=rancher-os-kernel-build

./scripts/ci

rm -rf dist

echo "Build complete. Copying artifacts..."

DIST_CONTAINER=$(docker create ${DOCKER_IMAGE})
trap "docker rm -v ${DIST_CONTAINER}" EXIT

docker cp ${DIST_CONTAINER}:/source/dist/kernel dist

ls -lh dist/kernel
