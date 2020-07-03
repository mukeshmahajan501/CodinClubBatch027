#!/bin/bash -x
isPartTime=1;
isFullTime=2;
maxHrInMonth=10;
noOfWorkingDays=20
ratePerHr=20;

totalEmpHr=0;
totalWorkingDay=0;
while [[ $totalEmpHr -lt $maxHrInMonth && 
	 $totalWorkingDays -lt $noOfWorkingDays ]]
do
	((totalWorkingDay++))
empCheck=$((RANDOM%3));
case $empCheck in
	$isFullTime )
	empHrs=8
	;;
	$isPartTime )
	empHrs=4
	;;
	*)
	empHrs=0
	;;
esac
totalEmpHr=$(( $totalEmpHr * $empHrs ))
done
totalSalary=$(( $totalEmpHr * $ratePerHr ))



