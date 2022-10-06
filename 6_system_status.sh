#!/bin/bash

echo "Welcome $USER on $HOSTNAME"
echo

# `` is equivalent to using $(), both are used to get the output from commands and store them into a variable
FREE_RAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{printf $9}'`
ROOT_FREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')

echo "Available free RAM is $FREE_RAM mb"
echo
echo "Current load average $LOAD"
echo
echo "Free ROOT partition size is $ROOT_FREE"
