#!/bin/bash -x
echo  "hello"
echo "ls"
if [ $? -eq 0 ]
then
echo "sucessfully executed!!"
else
echo "not executed!!!"
fi
