#!/bin/bash

VALUE=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $VALUE -eq 1 ]
then
  echo "1 Network interface found"
elif [ $VALUE -gt 1 ]
then
  echo "Multiple active network interfaces"
else
  echo "No active network interfaces"
fi
