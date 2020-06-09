#!/bin/bash -x
stake=100
g=0
d=0
e=0
m=0
n=0
echo "stake per day =100$"
echo "per bet=1$"
echo "enter at what percentage of win/lose should you stop gambling"
read p
a=$(echo "scale=2;$p / 100"|bc);echo
b=$(echo "$a * 100"|bc);
int=${b%\.*}
h=$((100 + $int))
k=$((100 - $int))
while [[ $stake -lt $h && $g -lt $k ]]
do
        c=$((RANDOM%2))
if [ $c -eq 0 ]
then
        echo "winner"
        stake=$(($stake + 1))
        ((d++))
else
        echo "you lose"
        g=$(($g + 1))
        ((e++))
fi
done
