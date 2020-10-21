#!/bin/bash -x

for i in {1..20}
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
echo "Heads won $heads times"
echo "Tails won $tails times"
