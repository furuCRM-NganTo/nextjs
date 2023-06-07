#!/bin/bash

export NVM_DIR=$HOME/.nvm;
. $NVM_DIR/nvm.sh;

cd /home/ec2-user/deploy_nextjs_app
git pull origin master
nvm install v18.16.0
npm install &&
npm run build &&
pm2 restart deploy_nextjs_app
