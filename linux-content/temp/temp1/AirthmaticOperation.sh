#!/bin/bash -x
a=2
b=10
c=30

op1=$(($a+$b*$c))
op2=$(($a%$b+$c))
op3=$(($c+$a/$b))
op4=$(($a*$b+$c))


max=0

if [[ $op1 -gt $max ]]
then
	max=$(($op1))
elif [[ $op2 -ge $max ]]
then
	max=$(($op2))
elif [[ $op3 -ge $max ]]
then
	max=$(($op3))
elif [[ $op4 -ge $max ]]
then
	max=$(($op4))
else
	echo "sjsjsj"
fi

echo "maximum is:$max"

min=1000
if [ $op1 -le $min ]
then
        min=$op1
elif [ $op2 -le $min ]
then
        min=$op2
elif [ $op3 -ge $min ]
then
        min=$op3
elif [ $op4 -ge $min ]
then
        min=$op4
fi

echo "minimum is:$min"


