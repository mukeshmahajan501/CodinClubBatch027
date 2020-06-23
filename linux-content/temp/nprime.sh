#!/bin/bash 
echo "enter a number: "
read no

echo "prime number between 1 to $no:"
for ((i=2;i<=no;i++))
do
count=0;
for((j=i;j>=1;j--))
	
	do

		if [[ $(($i%$j)) -eq 0 ]]
	       	then
			((count++))
		fi
	done
		if [[ $count -eq 2 ]]
		then
			echo $i
		
		fi

done

