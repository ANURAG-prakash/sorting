#!/bin/bash -x
echo "---Arithmetic sorting---"

read -p "Enter value of a :" Number1
read -p "Enter value of b :" Number2
read -p "Enter value of c :" Number3

declare -A resultArray
resultArray[1]=$(( Number1+Number2*Number3));
resultArray[2]=$(( Number1*Number2+Number3));
resultArray[3]=$(( Number3+Number1/Number2));
resultArray[4]=$(( Number1%Number2+Number3));
temp=0
for (( i=1; i<5; i++ ))
do
        for (( j=1; j<5-i-1; j++ ))
        do
                if [ ${resultArray[j]} -gt ${resultArray[$(( j+1 ))]} ]
                then
                        temp=${resultArray[j]}
                        resultArray[$j]=${resultArray[$((j+1))]}
                        resultArray[$((j+1))]=$temp
                fi
        done
done
echo ${resultArray[@]}


