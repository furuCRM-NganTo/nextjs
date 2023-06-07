#!/bin/bash

export NVM_DIR=$HOME/.nvm;
. $NVM_DIR/nvm.sh;

cd /home/ec2-user/nextjs
git pull origin master
nvm install v18.16.0
npm install &&
npm run build &&
npm install pm2 -g &&
pm2 restart nextjs
