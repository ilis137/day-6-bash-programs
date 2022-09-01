#!/bin/bash -x

product=1
counter=0
maxProduct=256

read -p "enter a power for 2: " n

while [[ $counter -lt $n && 
          $product -lt $maxProduct ]] 
do

      product=$((product*2))
      ((counter++))
      echo $product 

done