#!/bin/bash

read -p "Enter a number: " NUM

if [ $NUM -gt 100 ]
then
  echo "We have entered if-block"
  sleep 3
  echo "Your number is greater than 100"
  date
else
  echo "Your number is lower or equal than 100"
fi

echo "Script execution was a success!"
