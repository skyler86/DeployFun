#!/bin/sh

IMAGE_NAME="prometheus-test-demo"
VERSION_ID="${BUILD_ID}"
IMAGE_ADDR="192.168.2.10/jenkins/${IMAGE_NAME}"

docker build -f /volume/nfs/jenkins/workspace/job-demo/Dockerfile -t ${IMAGE_NAME}:${VERSION_ID} .

docker tag  ${IMAGE_NAME}:${VERSION_ID}  ${IMAGE_ADDR}:${VERSION_ID}
docker login --username=admin --password=rainbow123 192.168.2.10
docker push ${IMAGE_ADDR}:${VERSION_ID}
