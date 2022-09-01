#!/bin/bash -x

read -p "enter the starting number: " num1
read -p "enter the ending number: " num2

for (( i=$num1;i<=$num2;i++ ))
do
isPrime=1
      for ((j=2;j<i;j++))
      do

          if (( ($i%$j)==0 ))
          then
              
              isPrime=0
              break;
              
          else
          
              continue;
          fi
      done
   if (($isPrime==1))
       then
        echo "$i is  prime"
       else
        echo "$i is not prime"
       fi
  
done
    