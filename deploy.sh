#!/bin/bash

export NVM_DIR=$HOME/.nvm;
. $NVM_DIR/nvm.sh;

cd /home/ec2-user/deploy_nextjs_app
git pull origin master
nvm install v16
yarn install &&
yarn build &&
