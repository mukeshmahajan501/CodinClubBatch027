#!/bin/bash  -x
NO_OF_DAYS_WORKING=20;
EMP_RATE_PER_HRS=20;
isPresent=1;

randomCheck=$((RANDOM%2))
if [[ $isPresent -eq $randomCheck ]]
then
	echo "employee is present!!"
	EMP_HRS=8
	salary=$(( $EMP_HRS * $EMP_RATE_PER_HRS ));
	totalSalary=$(( $salary * $NO_OF_DAYS_WORKING ))
else
	echo "employee is not present!!"
fi
