#!/bin/bash

a=$1
b=$2
c=$3

if [[ $a -ge $b ]];
then
	if [[ $a -ge $c ]];
	then
		echo "$a is the largest"
	else
		echo "$c is the largest"
	fi
else
	if [[ $b -ge $c ]];
        then
                echo "$b is the largest"
        else
                echo "$c is the largest"
	fi
fi
