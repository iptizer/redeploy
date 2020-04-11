#!/bin/bash
CONTAINER_NAME="redeploy"

docker build -t ${CONTAINER_NAME}:latest -t registry.haumdaucher.de/${CONTAINER_NAME}:latest .
docker push registry.haumdaucher.de/${CONTAINER_NAME}:latest
