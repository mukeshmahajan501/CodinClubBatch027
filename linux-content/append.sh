#!/bin/bash
date=$(date +%d%m%y)

for file in `ls *.log.1`
do
baseName=${file%.log.1*}
#extension=${file##*.}
mv "$file" "$baseName"-"$date.log"
done

