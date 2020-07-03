#!/bin/bash -x
#shopt -s extglob
echo "enter words starting with capital"
read word
#pat="^[A-Z]{1}[a-zA-Z]{2,}$"
pat="^[[:upper:]]{1}[a-z]{2,}"
if [[ $word =~ $pat ]];
then
        echo yes;
else
        echo no;
fi
