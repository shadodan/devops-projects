#!/bin/bash

MYUSERS="alpha beta gamma delta"

for USER in $MYUSERS
do
  echo "Adding user $USER"
  useradd $USER
  id $USER
  echo
done
