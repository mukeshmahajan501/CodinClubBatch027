#!/bin/bash -x
echo "enter your choice: "
read choice

case $choice in
	1)
		echo "feet to inch"
		echo "enter a number in feet: "
		read feet
		printf %.f "$(($feet*12))"
		;;
	2)
		 echo "feet to meter"
                echo "enter a number in feet: "
                read feet
                printf %.4f "$((1000000000 * ($feet*3048)/10000))e-9"
                ;;
	3)
		echo "inches to feet"
                echo "enter a number in inches: "
                read inch
                printf %.4f "$((1000000000 * ($inch*1)/12))e-9"
                ;;
	4)
		echo "meter to feet "
                echo "enter a number in meter: "
                read meter
                printf %.f "$(($feet*12))"
                ;;
	*)
		echo "wrong choice!!"
		;;
esac



