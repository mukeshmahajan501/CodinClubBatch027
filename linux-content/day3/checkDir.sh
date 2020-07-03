#!/bin/bash -x
echo "enter folder name:" 
read name

if [ -d $name ] 
then
	echo "already exists" 
else
	mkdir $name 
fi
