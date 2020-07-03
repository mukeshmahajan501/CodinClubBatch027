#!/bin/bash -x

echo "enter a number like 1,10,100,1000 :"
read no

case $no in
	1)
		echo "unit"
		;;
	10)
		echo "ten"
		;;
	100)
                echo "hundred"
                ;;
  	1000)
                echo "thousand"
                ;;
	*)
		echo "wrong choice"
		;;
esac



