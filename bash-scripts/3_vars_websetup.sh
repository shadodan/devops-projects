#!/bin/bash

# Variables declaration
PACKAGES="httpd wget unzip"
SERVICE="httpd"
URL="https://www.tooplate.com/zip-templates/2109_the_card.zip"
ARTIFACT_NAME="2109_the_card"
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
wget $URL > /dev/null
unzip $ARTIFACT_NAME.zip
sudo cp -r $ARTIFACT_NAME/* /var/www/html/

# Restartint the httpd service
sudo systemctl restart $SERVICE

# Cleaning up temp directory
rm -rf $TEMP_DIR

# Showing final status of httpd service
sudo systemctl status $SERVICE