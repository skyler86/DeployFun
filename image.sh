#!/bin/sh

VERSION_ID="${BUILD_ID}"

docker build -t prometheus-test-demo:${VERSION_ID} -f Dockerfile .

docker tag  prometheus-test-demo:${VERSION_ID} 192.168.2.10/jenkins/prometheus-test-demo:${VERSION_ID}
docker login --username=admin --password=rainbow123 192.168.2.10
docker push 192.168.2.10/jenkins/prometheus-test-demo:${VERSION_ID}
