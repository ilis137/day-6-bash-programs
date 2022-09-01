#!/bin/bash -x

read -p "enter a number: " num
isPrime=1
for ((i=2;i<$num;i++))
do

    if (( ($num%$i)==0 ))
    then
        
        isPrime=0
        break;
        
    else
    
        continue;
    fi
done
       if (($isPrime==1))
       then
        echo "The given number is  prime"
       else
        echo "The given number is not prime"
       fi