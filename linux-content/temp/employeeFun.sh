#!/bin/bash -x
isPartTime=1;
isFullTime=2;
MAX_HRS_IN_MONTH=4;
NO_OF_WORKING_DAYS=20
EMP_RATE_PER_HR=20;

totalEmpHr=0;
totalWorkingDays=0;

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

workHours="$( getWorkingHr $((RANDOM%3)) )"
totalWorkHours=$(( $totalWorkHours + $workHours ))
done
totalSalary=$(( $totalWorkHours * $EMP_RATE_PER_HR ))



