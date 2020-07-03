#!/bin/bash -x
calFeet=$((60*40))
printf %.4f "$(( (($calFeet*3048)/10000) ))"
