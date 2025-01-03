#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <value_in_metres>"
    exit 1
fi

#to convert metre to cm and km we mul 10e3 to input and div 10e3 to input respectively
cm=$(expr $1 \* 100)
km=$(expr $1 \/ 1000)

echo " $1 metre in cm is $cm and in km is $km "

