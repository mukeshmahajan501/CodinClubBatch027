#!/bin/bash -x
fact=1;
echo "enter a number"
read no

echo "factorial of $no is"
for ((i=1;i<=5;i++))
do
	fact=$((fact*i))
done 
echo $fact
