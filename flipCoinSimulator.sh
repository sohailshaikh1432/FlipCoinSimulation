#!/bin/bash -x

numberOfHeads=0
numberOfTails=0
for (( i=0 ; ; i++ ))
do
	coinFlip=$((RANDOM%2))
	if [ $coinFlip -eq 0 ]
	then
		((numberOfHeads++))
	else
		((numberOfTails++))
	fi
	if [ $numberOfHeads -eq 21 ]
	then
		echo "Heads win by $(($numberOfHeads-$numberOfTails))"
		break
	elif [ $numberOfTails -eq 21 ]
	then
		echo "Tails win by $(($numberOfTails-$numberOfHeads))"
		break
	elif [ $numberOfHeads -eq 20 ] && [ $numberOfTails -eq 20 ]
	then
		echo "Tie"
		break
	fi
done
