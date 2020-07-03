#!/bin/bash -x
for ((i=0;i<10;i++))
do
	randomCheck=$((RANDOM%90+10))
	echo $randomCheck
done
