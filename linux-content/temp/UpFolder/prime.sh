#!/bin/bash -x
echo "enter a number : "
read no

temp=0;
for ((i=2;i<$no-1;i++))
do
	if [ $(($no%$i)) -eq 0 ]
	then
		((temp++))
	fi
done

if [ $temp -eq 0 ]
then
	echo "number is prime"
else
	echo "number is not prime"
fi
