#!/bin/bash -x

echo "enter a number :"
read no

if [ $no -eq 1 ]
then
	echo "one"
elif [ $no -eq 2 ]
then
	echo "two"
elif [ $no -eq 3 ]
then
	echo "three"
elif [ $no -eq 4 ]
then
	echo "four"
elif [ $no -eq 5 ]
then
	echo "five"
elif [ $no -eq 6 ]
then
        echo "six"

elif [ $no -eq 7 ]
then
        echo "seven"

elif [ $no -eq 8 ]
then
        echo "eight"

elif [ $no -eq 9 ]
then
        echo "nine"
else
	echo "wrong input!!"
fi


