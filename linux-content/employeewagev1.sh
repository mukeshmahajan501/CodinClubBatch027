#!/bin/bash -x
totalSalary=0;
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
noOfDays=20
for ((day=1;day<=$noOfDays;day++))
do
empCheck=$((RANDOM%3))

case $empCheck in
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=4
		;;
	*)
	empHrs=0
		;;
esac
salary=$(($empHrs*$empRatePerHr))
totalSalary=$(($totalSalary+$salary))
done
echo $totalSalary
