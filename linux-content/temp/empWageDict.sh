#!/bin/bash -x
isPartTime=1;
isFullTime=2;
MAX_HRS_IN_MONTH=4;
NO_OF_WORKING_DAYS=20
EMP_RATE_PER_HR=20;

#totalEmpHr=0;
#totalWorkingDays=0;
declare -A dailyWage
function getEmpWage()
{
	local empWage=$1
	empHours=$(($empWage*$EMP_RATE_PER_HR))
	echo $((empHours))
}

function getWorkingHr () {
case $empCheck in
        $isFullTime)
        empHours=8
        ;;
        $isPartTime )
        empHours=4
        ;;
        *)
        empHours=0
        ;;
esac
echo $empHours
}
while [[ $totalEmpHours -lt $MAX_HRS_IN_MONTH && 
	 $totalWorkingDays -lt $NO_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))

empHours="$( getWorkingHr $((RANDOM%3)) )"
totalEmpHours=$(( $totalEmpHours + $empHours ))
dailyWage["day $totalWorkingDays "]=$(getEmpWage $empHours)
done
totalSalary=$(( $totalEmpHours * $EMP_RATE_PER_HR ))
echo ${dailyWage[@]}
echo ${!dailyWage[@]}

