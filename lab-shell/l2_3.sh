#!/bin/bash
# program to display prime number between 1 and hundred
# logic is to increment for loop till 100 and check if i is prime, if so, then echo


for i in {2..100};
do
	flag=0
	for ((a=2; a*a<=i; a++));
	do
		if ((i % a == 0)); then
			flag=1
			break
		fi
	done

	if ((flag == 0)); then
		echo "$i"
	fi
done

