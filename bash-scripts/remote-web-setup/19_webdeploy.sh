#!/bin/bash

USR='devops'

for host in $(cat remhost)
do
  echo "Connecting to $host..."
  scp 18_multios_websetup.sh $USR@$host:/tmp/
  ssh $USR@$host sudo /tmp/18_multios_websetup.sh
  ssh $USR@$host sudo rm -rf /tmp/18_multios_websetup.sh
  echo
done