#!/bin/bash -x



declare -A roll


for ((i=1;i<=6;i++))
do
	ranCheck=$((RANDOM%6+1))
	roll[$i]=$ranCheck
done


echo ${roll[@]}

count=1;
for ((i=1;i<=6;i++))
do
	if [ ${roll[$i]} -ne 0 ]
	then
		for ((j=$i+1;j<=6;j++))
		do
			if [ ${roll[$i]} -eq ${roll[$j]} ]
			then
				((count++))
				roll[$j]=0
			fi
		done
			echo "${roll[$i]} :$count"
			count=1
	fi
done


