#!/bin/bash

# Variables declaration
PACKAGES="httpd wget unzip"
SERVICE="httpd"
TEMP_DIR="/tmp/webfiles/"

# Installing dependencies and sending unnecessary output to /dev/null
sudo yum install $PACKAGES -y > /dev/null

# Starting and enabling httpd service
sudo systemctl start $SERVICE
sudo systemctl enable $SERVICE

# Creating temp directory
mkdir -p $TEMP_DIR
cd $TEMP_DIR

# Downloading template from internet
wget $1 > /dev/null
unzip $2.zip
sudo cp -r $2/* /var/www/html/

# Restartint the httpd service
sudo systemctl restart $SERVICE

# Cleaning up temp directory
rm -rf $TEMP_DIR

# Showing final status of httpd service
sudo systemctl status $SERVICE