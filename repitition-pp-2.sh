#!/bin/bash  -x
read -p "Enter a number for harmonic number: " num
harmonicNumber=0
for ((i=1;i<=$num;i++))
do

harmonicNumber=$(( $harmonicNumber + (1/$i) | bc ))
done

echo "Harmonic number is: " $harmonicNumber