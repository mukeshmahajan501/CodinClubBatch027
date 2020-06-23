#!/bin/bash -x
isLeap=0
echo "enter year: "
read year

if [ $((year%4)) -ne 0 ]
then
	isLeap=0
elif [ $((year%400)) -eq 0 ]
then
	isLeap=1
elif [ $((year%100)) -eq 0 ]
then
	isLeap=0
else
	isLeap=1
fi
if [ $isLeap -eq 1 ]
then
echo "leap year"
else
echo "not leap year"
fi

