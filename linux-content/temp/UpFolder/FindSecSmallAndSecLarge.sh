#!/bin/bash

for ((i=0;i<10;i++))
do
        randomCheck=$((RANDOM%900+100))

        MaxMin[i]=$randomCheck
done

echo " printing array is: ${MaxMin[@]}"


for ((i=0;i<10;i++))
do
for ((j=$i;j<10;j++))
	do
		if [ $((${MaxMin[i]})) -gt $((${MaxMin[j]})) ]
		then
			temp=$((${MaxMin[i]})) 
			MaxMin[i]=$((${MaxMin[j]})) 
			MaxMin[j]=$temp
		fi
	done
done

echo "sorted array is: ${MaxMin[@]}"

echo "second smallest element is:${MaxMin[1]}"
echo "second largest element is: ${MaxMin[10-2]}"

