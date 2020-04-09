#!/bin/bash
CONTAINER_NAME="redeploy"

docker build -t ${CONTAINER_NAME}:latest -t hub.moritzgraf.de:5000/${CONTAINER_NAME}:latest .
docker push hub.moritzgraf.de:5000/${CONTAINER_NAME}:latest
