#!/bin/bash

# Stop httpd service
sudo systemctl stop httpd

# Remove the page generated
sudo rm -rf /var/www/html/*

# Remove dependecies installed
sudo yum remove httpd wget unzip -y