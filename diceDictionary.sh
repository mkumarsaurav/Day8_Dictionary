#!/bin/bash -x

declare -A diceNumber
diceNumber["one"]=0;
diceNumber["two"]=0;
diceNumber["three"]=0;
diceNumber["four"]=0;
diceNumber["five"]=0;
diceNumber["six"]=0;
while [ ${diceNumber["one"]} -lt 10 -a ${diceNumber["two"]} -lt 10 -a ${diceNumber["three"]} -lt 10 -a ${diceNumber["four"]} -lt 10 -a ${diceNumber["five"]} -lt 10 -a ${diceNumber["six"]} -lt 10  ]
do
dice=$((RANDOM%6 +1 ));
if [ $dice -eq 1 ]
then
	diceNumber["one"]=$((${diceNumber["one"]}+1))
elif [ $dice -eq 2 ]
then
	diceNumber["two"]=$((${diceNumber["two"]}+1))
elif [ $dice -eq 3 ]
then
	diceNumber["three"]=$((${diceNumber["three"]}+1))
elif [ $dice -eq 4 ]
then
	diceNumber["four"]=$((${diceNumber["four"]}+1))
elif [ $dice -eq 5 ]
then
	diceNumber["five"]=$((${diceNumber["five"]}+1))
elif [ $dice -eq 6 ]
then
	diceNumber["six"]=$((${diceNumber["six"]}+1))
fi
done

echo "Occurence  of 10 in Dictionary :" $dice

