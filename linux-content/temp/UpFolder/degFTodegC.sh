#!/bin/bash -x

echo "enter your choice"
read choice

case $choice in
	1)
		echo "Enter Degree in Fahrenheit:"
		read degF

		printf %.4f "$(( (degF-32)*(1000000000*5)/(9) ))e-9" 
		;;
	
	2)
		echo "Enter Degree in Celsius"
		read degC
		printf %.4f "$(( (degC)*(1000000000*9)/(5) +32 ))e-9"
		;;
	3)
		echo "wrong input"
		;;
esac
