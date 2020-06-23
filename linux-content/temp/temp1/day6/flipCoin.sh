#!/bin/bash -x
i=0

while [ $i -ne 11 ]
do
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 1 ]
	then
		echo "heads"
	else
		echo "tails"
	fi
	((i++))
done

