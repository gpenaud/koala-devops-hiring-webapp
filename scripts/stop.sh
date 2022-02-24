#!/usr/bin/env bash

# export environment variables
export $(cat /home/ubuntu/.env | xargs)

cd /home/ubuntu/${APP_NAME}
pm2 stop ${APP_NAME} || true
