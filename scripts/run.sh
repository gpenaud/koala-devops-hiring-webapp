#!/usr/bin/env bash

# export environment variables
export $(cat /home/ubuntu/.env | xargs)

if [ ! -z "$DEPLOYMENT_GROUP_NAME" ]; then
 export NODE_ENV=$DEPLOYMENT_GROUP_NAME
fi

# cd /home/ubuntu/${APP_NAME}
pm2 start npm --name ${APP_NAME} -i 0 -- start
