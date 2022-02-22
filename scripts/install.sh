#!/usr/bin/env bash
set -e

# update instance
apt update -y

# install nodejs
curl -silent --location https://deb.nodesource.com/setup_14.x | sudo bash -
apt install -y nodejs

# install pm2 module globaly
npm install -g pm2
pm2 update
