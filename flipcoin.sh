#!/bin/bash -x
heads=0
tails=0
while (( $heads<21 && $tails<21 ))
do
	if [ $((RANDOM%2)) == 1 ]
	then
		echo "heads Won"
		((heads++))
	else
		echo "Tails Won"
		((tails++))
	fi
done

if [ $heads == $tails ]
then
   echo "Tie between Head and Tails"
fi

if [ $heads -gt $tails ]
then
  echo $heads $tails | awk '{print "Heads won the match by " (($1-$2))}'
else
  echo $heads $tails | awk '{print "Tails won the match by " (($2-$1))}'
fi
