#!/bin/bash -x
echo "enter word to search in access.log file"
read word
count=`cat access.log | grep -o $word |wc -l`
echo "The total $word in access.log file is:$count"


