#!/bin/bash -x
heads=0
tails=0

headstails ()
{
	if [ $((RANDOM%2)) == 1 ]
        then
		((heads++))
                echo "heads Won"
        else
             ((tails++))
	     echo "Tails Won"
        fi
}


while (( $heads<21 && $tails<21 ))
do
	headstails
done



if [ $heads == $tails ]
then
   echo "Tie between Head and Tails"
   flag=1
	while [ $flag -eq 1 ]
	do
	  if [ $heads > $(($tails+2)) ]
	  then
		flag=0
		 echo $heads $tails | awk '{print "Heads won the match by " (($1-$2))}'
	  elif [ $tails > $(($heads+2)) ]
	  then
		flag=0
  		echo $heads $tails | awk '{print "Tails won the match by " (($2-$1))}'
	  else
		headstails;
	  fi
	done
fi
