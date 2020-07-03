#!/bin/bash -x

echo "enter a number :"
read no

if [ $no -eq 1 ]
then
	echo "sunday"
elif [ $no -eq 2 ]
then
	echo "monday"
elif [ $no -eq 3 ]
then
	echo "tuesday"
elif [ $no -eq 4 ]
then
	echo "wednesday"
elif [ $no -eq 5 ]
then
	echo "thursday"
elif [ $no -eq 6 ]
then
        echo "friday"

elif [ $no -eq 7 ]
then
        echo "saturday"

else
	echo "wrong input!!"
fi


