#!/usr/bin/env bash
set -e

# update instance
apt -y update

# install nodejs
curl -silent --location https://deb.nodesource.com/setup_14.x | sudo bash -
apt -y install nodejs

# install pm2 module globaly
npm install -g pm2
pm2 update
