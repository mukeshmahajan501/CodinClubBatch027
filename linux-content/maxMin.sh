#!/bin/bash -x
max=0
min=1000
for ((i=1;i<=5;i++))
do
	threeDigVal=$((RANDOM%999))
	if [ $threeDigVal -ge $max ]
	then
		max=$threeDigVal

	elif [ $threeDigVal -le $min ]
	then
		min=$threeDigVal
	fi
	
done
echo "Maximum value is :$max"
echo "Minimum value is: $min"
