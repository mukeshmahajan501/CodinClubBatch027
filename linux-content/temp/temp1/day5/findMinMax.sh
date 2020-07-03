#!/bin/bash -x
a=30
b=20
c=10
value1=$(($a + $b * $c))
value2=$(($c + $a / $b))
value3=$(($a % $b + $c)) 
value4=$(($a * $b + $c))

declare arr
arr[1]=$value1
arr[2]=$value2
arr[3]=$value3
arr[4]=$value4


max=0
echo ${arr[@]}


for ((i=1;i<=4;i++))
do
	if [ ${arr[i]} -ge $max ]
	then
		max=${arr[i]}
	fi
done

echo "maximum is:$max"



min=${arr[1]}
for ((i=1;i<=4;i++))
do
        if [ ${arr[i]} -le $min ]
        then
                min=${arr[i]}
        fi
done

echo "minimum is:$min"




