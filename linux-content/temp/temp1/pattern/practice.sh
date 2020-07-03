#!/bin/bash -x
code=@@95/Mukeshmahajan
pattern="^([@]+[0-9]{2,}/[[:upper:]]{1}{a-z}{2,})"

if [[ code =~ $pattern ]]
then
	echo "found"
else
	echo "not found"
fi
