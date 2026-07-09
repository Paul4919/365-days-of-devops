#!/bin/bash



COUNT=1

while [ $COUNT -le 5 ]
do
    echo "Current count: $COUNT"
    COUNT=$((COUNT + 1))
done
