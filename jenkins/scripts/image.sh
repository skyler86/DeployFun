#!/bin/sh

IMAGE_NAME="prometheus-test-demo"
VERSION_ID="${BUILD_ID}"
IMAGE_ADDR="192.168.2.10/jenkins/${IMAGE_NAME}"

docker build -f Dockerfile --build-arg jar_name=prometheus-test-demo-0.0.1-SNAPSHOT.jar -t ${IMAGE_NAME}:${VERSION_ID} .

docker tag  ${IMAGE_NAME}:${VERSION_ID}  ${IMAGE_ADDR}:${VERSION_ID}
docker login --username=admin --password=rainbow123 192.168.2.10
docker push ${IMAGE_ADDR}:${VERSION_ID}
