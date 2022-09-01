#!/bin/bash  -x

isPalindrome ()
{
    number=$1
    copyOfNumber=$number
    reverse=0
    while (( number > 0 ))
    do
        rem=$(( number % 10))
        reverse=$(( reverse * 10 +  rem ))
        (( number /= 10 ))

    done
    if(( reverse == copyOfNumber))
    then
        echo "$copyOfNumber is palindrome"
    else
        echo "$copyOfNumber is not palindrome"
    fi
}

read -p "Enter number:" num
isPalindrome $num
