#!/bin/bash

# Installing dependencies and sending unnecessary output to /dev/null
sudo yum install wget unzip httpd -y > /dev/null

# Creating temp directory
mkdir -p /tmp/webfiles/
cd /tmp/webfiles/

# Starting and enabling httpd service
sudo systemctl start httpd
sudo systemctl enable httpd

# Downloading template from internet
wget https://www.tooplate.com/zip-templates/2109_the_card.zip > /dev/null
unzip 2109_the_card.zip
sudo cp -r 2109_the_card/* /var/www/html/

# Restartint the httpd service
sudo systemctl restart httpd

# Cleaning up temp directory
rm -rf /tmp/webfiles/

# Showing final status of httpd service
sudo systemctl status httpd