#!/bin/sh
git pull origin master
npm install
pm2 stop index.js
pm2 start index.js
exit
