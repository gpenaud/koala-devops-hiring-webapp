#!/usr/bin/env bash

if [ ! -z "$DEPLOYMENT_GROUP_NAME" ]; then
 export NODE_ENV=$DEPLOYMENT_GROUP_NAME
fi

cd /home/ubuntu/webapp
pm2 start npm --name webapp -i 0 -- start
