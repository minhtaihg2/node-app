#!/bin/sh
cd /home/ubuntu/JenkinsDemo
git pull origin master
npm install
pm2 restart all
exit
