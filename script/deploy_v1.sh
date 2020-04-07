#!/bin/sh
cd /home/ubuntu/Github/node-app
git pull origin master
npm install
pm2 restart all
exit
