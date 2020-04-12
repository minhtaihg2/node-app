#!/bin/sh
git pull origin master
npm install
pm2 stop all
pm2 start index.js
exit
