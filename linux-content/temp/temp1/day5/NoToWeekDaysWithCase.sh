#!/bin/bash -x

echo "enter a number between 1-9 :"
read no

case $no in
	1)
		echo "sunday"
		;;
	2)
		echo "monday"
		;;
	3)
                echo "tuesday"
                ;;
  	4)
                echo "wedneday"
                ;;
  	5)
                echo "thursday"
                ;;
  	6)
                echo "friday"
                ;;
  	7)
                echo "saturday"
                ;;
	*)
		echo "wrong choice"
		;;
esac



