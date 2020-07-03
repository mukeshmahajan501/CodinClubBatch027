#!/bin/bash 

person=1

declare -A birthDictionary

getBirthYear () {

	echo $((RANDOM%2+92))
}

getBirthMonth () {

	echo $((RANDOM%12+1))

}

storeInDictionary () {

	birthMonth=$1
	birthYear=$2
	person=$3
	value="$birthMonth-$birthYear-'$person th person'"
	
	birthDictionary[$birthMonth]="${birthDictionary[$birthMonth]} $value"

}

printBirthMonth () {
	for((i=1;i<=12;i++))
	do
		echo ${birthDictionary[$i]}
	done

}

main () {

	while [ $person -ne 50 ]
	do
		birthYear=$(getBirthYear)
		birthMonth=$(getBirthMonth)
		storeInDictionary $birthMonth $birthYear $person
		((person++))
	done
	printBirthMonth
}

main
