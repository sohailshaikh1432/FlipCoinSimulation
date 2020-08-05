#!/bin/bash -x

numberOfHeads=0
numberOfTails=0
for (( i=0 ; i<10 ; i++ ))
do
	coinFlip=$((RANDOM%2))
	if [ $coinFlip -eq 0 ]
	then
		((numberOfHeads++))
	else
		((numberOfTails++))
	fi
done
echo "Heads has won $numberOfHeads times and tails has won $numberOfTails times"
