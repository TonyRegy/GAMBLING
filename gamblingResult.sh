#!/bin/bash -x
echo "stake per day =100$"
echo "per bet=1$"
echo "enter at what percentage of win/lose should you stop gambling"
read p
a=$(echo "scale=2;$p / 100"|bc);echo
b=$(echo "$a * 100"|bc);
int=${b%\.*}
h=$((100 + $int))
k=$((100 - $int))
c=$((RANDOM%2))
if [ $c -eq 0 ]
then
        echo "winner"
else
        echo "you lose"
fi
