#!/bin/bash -x
echo "enter a number in inch: "
read no
calFeet=$(($no/12))
echo "converted in feet: $calFeet ft"
