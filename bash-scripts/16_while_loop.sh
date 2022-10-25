#!/bin/bash

COUNTER=0

while [ $COUNTER -lt 5 ]
do
  echo "Looping..."
  echo "The actual value of the counter is $COUNTER"
  COUNTER=(( $COUNTER + 1 ))
  sleep 1
done

echo "Out of the loop..."