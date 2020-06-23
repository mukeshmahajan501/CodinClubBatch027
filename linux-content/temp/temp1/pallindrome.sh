#!/bin/bash -x
echo "enter a number"
read no
temp=$no
rev=0
function myFun () {

	while [ $no -ne 0 ]
	do
        	i=$(($no%10))
        	rev=$(($rev*10+$i))
        	no=$(($no/10))
	done
	echo $rev
}


result="$( myFun )"

if [ $temp -eq $result ]
then
	echo "$temp is pallindrome"
else
 	echo "$temp is not pallindrome"
fi

