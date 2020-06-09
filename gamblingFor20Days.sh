#!/bin/bash -x
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
for((i=1;i<=20;i++))
do
        stake=100
        g=0
while [[ $stake -lt $h && $g -lt $k ]]
do
        c=$((RANDOM%2))
if [ $c -eq 0 ]
then
        echo "winner"
         stake=$(($stake + 1))
        u=$(($stake - 100))
        array[((m++))]=$u
	((d++))
else
        echo "you lose"
        g=$(($g + 1))
        array1[((n++))]=$g
        ((e++))
fi
gain=$u
lost=$g
gain=$(($won - 100))
echo "amount won for the day" $gain
echo "amount lost for day" $lost
done
done
echo "won" $d "times"
echo "lost" $e "times"
