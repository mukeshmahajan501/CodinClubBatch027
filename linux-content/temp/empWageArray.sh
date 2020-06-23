#!/bin/bash -x
isPartTime=1;
isFullTime=2;
MAX_HRS_IN_MONTH=4;
NO_OF_WORKING_DAYS=20
EMP_RATE_PER_HR=20;

#totalEmpHr=0;
#totalWorkingDays=0;

function getEmpWage()
{
	local empWage=$1
	workHours=$(($empWage*$EMP_RATE_PER_HR))
	echo $((workHours))
}

function getWorkingHr () {
case $1 in
        $isFullTime)
        workHours=8
        ;;
        $isPartTime )
        workHours=4
        ;;
        *)
        workHours=0
        ;;
esac
echo $workHours
}
while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && 
	 $totalWorkingDays -lt $NO_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))

totalWorkHours="$( getWorkingHr $((RANDOM%3)) )"
workHours=$(( $totalWorkHours + $workHours ))
dailyWage[$totalWorkingDays]=$(getEmpWage $workHours)
done
totalSalary=$(( $WorkHours * $EMP_RATE_PER_HR ))
echo ${dailyWage[@]}


