#!/bin/bash 

echo "Enter a number: "
read no

temp=0
function checkPrime () {

	for ((i=2;i<$no-1;i++))
	do
		if [ $(($no%$i)) -eq 0 ]
		then
			((temp++))
		fi
	done
	echo $temp
}

#result="$( checkPrime )"

#if [ $result -eq 0 ]
#then
#	echo "Number is prime"
#else
#	echo "Number is not prime"
#fi

oldNo=$no
rev=0
function getPallindrome () {

		while [ $no -ne 0 ]
		do
			i=$(($no%10));
			rev=$(($rev*10+$i))
			no=$(($no/10))
		done
		echo $rev
}

res="$( getPallindrome )"

#if [ $res -eq $oldNo ]
#then
	
#	echo "No is pallindrome"
#else
#	echo "No is not pallindrome"
#fi


if [ $res -eq $oldNo ]
then
	echo "Number is pallindrome!!"
	result="$( checkPrime )"
	if [ $result -eq 0 ]
	then
		echo "no is prime!!"
	else
		echo "not prime!!!"
	fi
fi
