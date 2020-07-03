#!/bin/bash 

echo "enter a number of element : "
read no

echo "enter array elements: "


for ((i=0;i<no;i++))
do
	read arr[$i]
done

echo "element in array: ${arr[@]}"


for ((i=0;i<no;i++))
do
  for ((j=i+1;j<no;j++))
  do
	for ((k=j+1;k<no;k++))
	do
		if [ $((${arr[$i]}+${arr[$j]}+${arr[$k]}))  -eq 0 ]
		then
			echo "sum of three element equal to zero is: "

			echo ${arr[i]}
			echo ${arr[j]}
			echo ${arr[k]}
			printf "\n"
		fi
	done
    done
done
