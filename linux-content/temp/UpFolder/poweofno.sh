#!/bin/bash -x

echo "enter number:"
read no
echo "power of $no"
for ((i=1;i<=10;i++))
do
	echo $((no*i))
done

