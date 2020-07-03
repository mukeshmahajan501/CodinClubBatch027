

count=1;

declare -A birthdayMonth

while [[ $count -le 50 ]]
do
	randomCheck=$((RANDOM%12+1))
	birthdayMonth[$randomCheck]=$((${birthdayMonth}))
