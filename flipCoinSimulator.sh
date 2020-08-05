#!/bin/bash -x

numberOfHeads=0
numberOfTails=0
function coinFlip(){
coinFlip=$((RANDOM%2))
if [ $coinFlip -eq 0 ]
then
	((numberOfHeads++))
else
	((numberOfTails++))
fi
}
function tie(){
for (( j=0 ; ; j++ ))
do
	coinFlip
	if [ $(($numberOfHeads-$numberOfTails)) -ge 2 ]
	then
		echo "Heads win"
		break
	elif [ $(($numberOfTails-$numberOfHeads)) -ge 2 ]
	then
		echo "Tails win"
		break
	fi
done
}
for (( i=0 ; ; i++ ))
do
	coinFlip
	if [ $numberOfHeads -eq 21 ]
	then
		outcome=0
		break
	elif [ $numberOfTails -eq 21 ]
	then
		outcome=1
		break
	elif [ $numberOfHeads -eq 20 ] && [ $numberOfTails -eq 20 ]
	then
		outcome=2
		break
	fi
done
if [ $outcome -eq 2 ]
then
	outcomeAfterTie="$(tie)"
	echo $outcomeAfterTie
elif [ $outcome -eq 1 ]
then
	echo "Tails win by $(($numberOfTails-$numberOfHeads))"
elif [ $outcome -eq 0 ]
then
	echo "Heads win by $(($numberOfHeads-$numberOfTails))"
fi
