#!/bin/bash 

echo "enter a number"
read no
sum=0;
for ((i=1;i<=no;i++))
do
	sum=$(( sum + ((1000/$i)) ))
done
echo  $sum
