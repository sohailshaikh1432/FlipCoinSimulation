#!/bin/bash -x

coinFlip=$((RANDOM%2))
if [ $coinFlip -eq 0 ]
then
	echo "Heads is winner"
else
	echo "Tails is winner"
fi
