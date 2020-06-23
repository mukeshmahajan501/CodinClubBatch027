#!/bin/bash -x
[ -z "VARIABLE" ] && VARIABLE="dH34xJaa23"
if [ env | grep -q ^VARIABLE ]
then 
	echo "path is already present"
else
	export  VARIABLE
fi
