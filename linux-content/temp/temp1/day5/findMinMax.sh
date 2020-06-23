#!/bin/bash -x

echo "enter number 1: "
read a
echo "enter number 2: "
read b
echo "enter number 3: "
read c

value1=$(($a + $b * $c))
value2=$(($c + $a / $b))
value3=$(($a % $b + $c)) 
value4=$(($a * $b + $c))

max=0;
if [ $value1 -gt $max ]
then 
	max=$value1
elif [ $value2 -gt $max ]
then
	max=$value2
elif [ $value3 -gt $max ]
then 
	max=$value3
elif [ $value4 -gt $max ]
then
	max=$value4
else
	echo "all are equal"
fi
echo $max


