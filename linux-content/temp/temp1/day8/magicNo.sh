#!/bin/bash/ -x


start=0
end=100
mid=50

no=153


if [ $no -eq $mid ]
then
	if [ $(($mid%9)) -eq 1 ]
	then
		echo "number is magic"
	else
		echo "number is not magic"
	fi
elif [ $no -ge $mid ]
then
	for ((i=51;i<99;i++))
	do
		if [ $i -eq $no ]
		then
			if [ $(($i%9)) -eq 1 ]
			then
				echo "number is magic"
			else
				echo "number is not magic"
			fi
		fi
	done
elif [ $no -le $mid ]
then
	for ((i=1;i<50;i++))
	do
		if [ $i -eq $no ]
		then
			if [ $(($i%9)) -eq 1 ]
			then
				echo "number is magic"
			else
				echo "number is not magic"
			fi
		fi
	done
else
	echo "enter number between 1-100"

fi
