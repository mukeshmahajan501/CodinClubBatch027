#!/bin/bash -x
sum=0;
for ((i=1;i<=5;i++))
do
	number=$((RANDOM%99))
	sum=$(($sum+$number))
done
avg=$(($sum/5))
echo "sum of five two digit random number is:$sum"
echo "Average of five two digit random number is:$avg"
