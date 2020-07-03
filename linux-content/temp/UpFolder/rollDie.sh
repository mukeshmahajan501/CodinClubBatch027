#!/bin/bash -x



declare -A roll

for ((i=0;i<50;i++))
do
	randomCheck=$((RANDOM%6))
	roll[$i]=$randomCheck
done

	for ((i=0;i<50;i++))
	do
		count=0
		for ((j=0;j<50;j++))
		do
			if [ ${roll[i]} -eq ${roll[j]} ]
			then
				((count++))
				roll[j]=" "
				echo "$i:$count"
			fi
		done
	done


echo ${roll[@]}


