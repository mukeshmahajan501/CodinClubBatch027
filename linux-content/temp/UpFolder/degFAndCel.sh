#!/bin/bash/ -x

echo "ënter your choice "
read choice

case $choice in
		1)
			echo "Enter degree in celcius: "
			read degC
			printf %.4f "$(( (degC-32)*(1000000000*5)/(9) ))e-9"
			;;
		2)
			echo "Enter a degree in farhanite :"
			read degF
			printf %.4f "$(( (degF)*(1000000000*9)/(5) +32 ))e-9"
			;;
		3)
			echo "wrong input"
			;;
esac
