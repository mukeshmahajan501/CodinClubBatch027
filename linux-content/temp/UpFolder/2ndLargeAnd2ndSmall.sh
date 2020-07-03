#!/bin/bash 

for ((i=0;i<10;i++))
do
	randomCheck=$((RANDOM%900+100))

	MaxMin[i]=$randomCheck
done

echo " printing array is: ${MaxMin[@]}"

 largest=$((${MaxMin[0]}))
secondLargest=$((${MaxMin[0]}))

for ((i=0;i<10;i++))
do
	if [ $((${MaxMin[i]})) -ge $largest ]
	then
		secondLargest=$largest
		largest=$((${MaxMin[i]}));
	elif [ $((${MaxMin[i]})) -ge $secondLargest ]
	then
		secondLargest=$((${MaxMin[i]}))
	fi
done

smallest=$((${MaxMin[0]}))

for ((i=0;i<10;i++))
do
	if [[ $((${MaxMin[i]})) -le $smallest ]]
	then
		smallest=$((${MaxMin[i]}))
	fi
done
secondSmallest=$((${MaxMin[0]}))
for ((i=0;i<10;i++))
do
	if [[ $((${MaxMin[i]})) -le $secondSmallest && $((${MaxMin[i]})) -ne $smallest ]]
	then
		secondSmallest=$((${MaxMin[i]}))
	fi
done

echo "secondLargest is :$secondLargest"
echo "secondSmallest is :$secondSmallest"
