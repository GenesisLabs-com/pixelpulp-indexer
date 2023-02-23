#!/bin/sh


#=====================================
# HOST_IP  controlled by jenkins env
# HOST_USER controlled by jenkins envs
# PORT controlled by jenkins envs
#=====================================

# Get current git commit number
LABEL=$(git log -1 --format=%h)

CONTAINER_NAME=pixelpulp-indexer
CONTAINER_CURRENT=rnssolutions/$CONTAINER_NAME:$LABEL
    docker stop $CONTAINER_NAME-$BRANCH_NAME
    docker rm -f $CONTAINER_NAME-$BRANCH_NAME
    docker run -v /var/pixelpulp/pixelpulp-indexer/.env:/app/packages/indexer/.env -d -p 3001:$PORT --restart unless-stopped --name $CONTAINER_NAME-$BRANCH_NAME $CONTAINER_CURRENT
