#!/bin/bash -x

echo "enter a number"
read  no
i=0;
powerOfTwo=1;
while [ $i -le $no ]
do
	powerOfTwo=$(($powerOfTwo*2))
	echo $powerOfTwo
	((i++))
done
