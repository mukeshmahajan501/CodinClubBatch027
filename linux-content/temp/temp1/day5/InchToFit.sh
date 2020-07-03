#!/bin/bash -x
echo "enter a number in inch: "
read no
printf %.4f "$((1000000000*$no/(12)))"
echo "converted in feet: $calFeet ft"
