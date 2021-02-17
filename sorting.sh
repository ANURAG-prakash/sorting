#!/bin/bash -x
echo "---Arithmetic sorting---"

resultArray[exp2]=$(($Number1*$Number2+$Number3));
read -p "Enter value of a :" Number1
read -p "Enter value of b :" Number2
read -p "Enter value of c :" Number3

declare -A resultArray
resultArray[exp1]=$(( $Number1 + $Number2 * $Number3));
resultArray[exp2]=$(($Number1*$Number2+$Number3));
resultArray[exp3]=$(($Number3+$Number1/$Number2));
resultArray[exp4]=$(($Number1%$Number2+$Number3));
