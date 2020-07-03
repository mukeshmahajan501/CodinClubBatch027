#!/bin/bash -x

echo "enter a number between 1-9 :"
read no

case $no in
	1)
		echo "one"
		;;
	2)
		echo "two"
		;;
	3)
                echo "three"
                ;;
  	4)
                echo "four"
                ;;
  	5)
                echo "five"
                ;;
  	6)
                echo "six"
                ;;
  	7)
                echo "seven"
                ;;
  	8)
                echo "eight"
                ;;
  	9)
                echo "nine"
                ;;
	*)
		echo "wrong choice"
		;;
esac



