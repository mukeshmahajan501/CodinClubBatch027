#!/bin/bash 

declare -A dictionary
minimum=11
maximum=-1

getDieNumber () {

	randomValue=$(( RANDOM%6+1 ))
	storeInDictionary $randomValue

}

storeInDictionary () {
	key=$1
	dictionary[$key]=$(( ${dictionary[$key]} + 1 ))

}

getMinimumMaximum () {

	for ((i=1;i<=${#dictionary[@]};i++))
	do
		if [ ${dictionary[$i]} -lt $minimum ]
		then
			minimum=${dictionary[$i]}
		fi
		
		if [ ${dictionary[$i]} -gt $maximum ]
		then
			maximum=${dictionary[$i]}
		fi
	done
}
rollDieMain () {
	while [[ ${dictionary[1]} -ne 10 && ${dictionary[2]} -ne 10 && ${dictionary[3]} -ne 10 && ${dictionary[4]} -ne 10 && ${dictionary[5]} -ne 10 && ${dictionary[6]} -ne 10 ]]
	do
		getDieNumber
	done
		getMinimumMaximum

}
rollDieMain

echo "all key in dictionary:" ${!dictionary[@]}
echo "all element in dictionary: " ${dictionary[@]}
echo "minimum value:"$minimum
echo "maximum value:"$maximum









