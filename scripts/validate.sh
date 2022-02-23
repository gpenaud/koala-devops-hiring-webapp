#!/usr/bin/env bash

# export environment variables
export $(cat .env.development | xargs)

sleep 10
nc -zv 127.0.0.1 ${APP_PORT}
