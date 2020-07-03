#!/bin/bash -x

files=($(find  -mtime +"7"))
for files in ${files[*]}
do
cp $files $backupFolder
done

