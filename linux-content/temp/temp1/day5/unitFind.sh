#!/bin/bash -x
echo "enter a number: "
read no

if [ $no -eq 1 ]
then
	echo "unit"
elif [ $no -eq 10 ]
then 
	echo "ten"
elif [ $no -eq 100 ]
then 
	echo "hundred"
elif [ $no -eq 1000 ]
then 
	echo "thousand"
else
	echo "wrong input"
fi
