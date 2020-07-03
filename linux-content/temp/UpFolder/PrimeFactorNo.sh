#!/bin/bash -x

echo "enter a number"
read n
count=0
for ((i=2;i<n;i++))
do
        while [[ $n%$i -eq 0 ]]
        do
                echo $i
		arr[$count]=$i
		((count++))
                n=$((n/$i));
        done
done
        if [[ n -ge 2 ]]
        then
        echo $n
	((count++))
	arr[$count]=$n
        fi
echo "prime element in arrays is : ${arr[@]}"
