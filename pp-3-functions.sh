#!/bin/bash -x

isPrime ()
{
    local number=$1
  
    prime=1
    for ((i=2; i< number; i++))
    do
        if (( number % i == 0))
        then
            prime=0
            break
        fi
    done

   return $prime;
}

getReverseNumber ()
{
    local number=$1
    local reverse=0
    while (( number > 0))
    do
        remainder=$(( number % 10 ))
        reverse=$(( reverse * 10 + remainder ))
        (( number /= 10 ))
    done
    echo "$reverse"
}

read -p "enter a number: " number
isPrime $number
res=$?
 if (( $res==1 ))
    then
        echo "$number is prime"
        reverseNumber=$(getReverseNumber $number)
        echo "the reverse of $number is $reverseNumber"
        isPrime $reverseNumber
        res1=$?
        if ((  $res1==1 ))
        then
            echo "$reverseNumber is also prime"
        else
            echo "$reverseNumber is not prime"
        fi
    else
        echo "$number is not prime"
 fi



