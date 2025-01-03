#!/bin/bash
# program to check if leap year or not
# logic is that - leap years are divisible by 4, not by 100 but by 400

year=$1

if [ $(($year % 400)) -eq 0 ];
then
	echo "leap year"
elif [ $(($year % 4)) -eq 0 ] &&  [ $(($year % 100)) -ne 0 ];	
then
	echo "leap year"
else
	echo "not a leap year"
fi
