#!/bin/bash -x

echo "enter a number"
read n

for ((i=2;i<n;i++))
do
	while [[ $n%$i -eq 0 ]]
	do
		echo $i
		n=$((n/$i));
	done
done
	if [[ n -ge 2 ]]
	then
	echo $n
	fi
