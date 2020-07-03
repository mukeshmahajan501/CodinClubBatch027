#!/bin/bash -x

getDiceNo1=$((RANDOM%6+1))
getDiceNo2=$((RANDOM%6+1))
result=$(($getDiceNo1+$getDiceNo2))
echo $result
