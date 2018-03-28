#!/bin/bash

deploy_folder="/var/www/html/my-website/"
timestamp=$(date +%s)
cd $deploy_folder
git clone git@github.com:my-website.git $timestamp
ln -sfn $timestamp current
mkdir -p current/log/
systemctl nginx restart
