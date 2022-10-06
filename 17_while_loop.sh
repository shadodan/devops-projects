#!/bin/bash

COUNTER=2

while true
do
  echo "Looping..."
  echo "The actual value of the counter is $COUNTER"
  COUNTER=(( $COUNTER * 2 ))
  sleep 1
done

echo "Out of the loop..."