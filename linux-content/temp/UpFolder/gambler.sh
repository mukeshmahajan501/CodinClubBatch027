#!/bin/bash -x

echo "number of times win:$wins"
echo "total bets:$bets"




amount=100
goal=200
bets=0
wins=0

	while [[ $amount -ge 0 && $amount -le $goal ]]
	do
		((bets++))
	  randomCheck=$((RANDOM%2))

		if [ $randomCheck -eq 1 ]
		then
			((amount++))
		else
			((amount--))
		fi

		 if [ $amount -eq $goal ]
                then
                        ((wins++))
                fi



	done


echo "number of times win:$wins"
echo "total bets:$bets"
