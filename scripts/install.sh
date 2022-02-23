#!/usr/bin/env bash
set -e

# export environment variables
export $(cat .env.development | xargs)

cd /home/ubuntu/${APP_NAME}

# manage npm dependencies and running
rm -rf node_modules
npm install
npm run build

# # setup NODE_ENV
# if [ ! -z "$DEPLOYMENT_GROUP_NAME" ]; then
#     export NODE_ENV=$DEPLOYMENT_GROUP_NAME
#
#     hasEnv=`grep "export NODE_ENV" ~/.bash_profile | cat`
#     if [ -z "$hasEnv" ]; then
#         echo "export NODE_ENV=$DEPLOYMENT_GROUP_NAME" >> ~/.bash_profile
#     else
#         sed -i "/export NODE_ENV=\b/c\export NODE_ENV=$DEPLOYMENT_GROUP_NAME" ~/.bash_profile
#     fi
# fi
#
# # add node to startup
# hasRc=`grep "su -l $USER" /etc/rc.local | cat`
# if [ -z "$hasRc" ]; then
#     sudo sh -c "echo 'su -l $USER -c \"cd /home/ubuntu/${APP_NAME};sh ./run.sh\"' >> /etc/rc.local"
# fi
