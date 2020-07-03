#!/bin/bash -x

echo "Enter a day: "
read day
echo "Enter a month: "
read month

if [[ $day -ge 20 && $month -eq 5 || $day -le 20 && $month -eq 6  ]] 
then
echo "true"
else
echo "false"
fi
