#!/usr/bin/bash

CONTAINER_NAME=$1
CONTAINER=($(sudo docker ps | grep $CONTAINER_NAME))
echo "Found Container '${CONTAINER[1]}'" && echo "------------"
sudo docker logs ${CONTAINER[0]}
