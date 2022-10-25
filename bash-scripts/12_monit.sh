#!/bin/bash

date
ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
  echo "Process is running"
else
  echo "Process is not running"
  echo "Starting process"
  systemctl start httpd

  if [ $? -eq 0 ]
  then
    echo "Process started successfully"
  else
    echo "Process started failed, error code: "$?
  fi
fi
