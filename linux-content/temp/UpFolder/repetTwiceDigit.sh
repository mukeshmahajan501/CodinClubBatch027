#!/bin/bash 

for ((i=1;i<=100;i++))
do
	reminder=$(($i%10));
	quotient=$(($i/10));
	
	if [ $reminder -eq $quotient ]
	then
		echo $i
	fi
done

