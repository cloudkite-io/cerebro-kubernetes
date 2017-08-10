#!/usr/bin/env bash

REPO=gcr.io/cloudkite-public/cerebro
TIMESTAMP=`date "+%Y%m%d-%H%M"`

gcloud docker -a

docker build -t ${REPO}:latest .
docker tag ${REPO}:latest ${REPO}:${TIMESTAMP}
docker push ${REPO}:latest
docker push ${REPO}:${TIMESTAMP}

echo "Image pushed: ${REPO}:${TIMESTAMP}"

