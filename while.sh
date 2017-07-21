#!/bin/bash

#

echo "Press Ctrl+C to stop"


length=0

while :
do
    printf "\n["
    sleep 0.2
    while [ $length -le 10 ]
    do
        sleep 0.1
        printf ">"
        ((length++))
    done
    length=0
#printf "\r       "
done
