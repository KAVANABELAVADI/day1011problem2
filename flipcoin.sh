#!/bin/bash

if [ $((RANDOM%2)) == 1 ]
then
	echo "Heads won"
else
	echo "Tails won"
fi
