#!/bin/bash -x

fact=1

read -p "enter a number: " num

for ((i=1;i<=$num;i++))
do

    fact=$(($fact*$i))
    
done

echo "the factorial of the entered number is: $fact"