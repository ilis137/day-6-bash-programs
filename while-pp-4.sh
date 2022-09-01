#!/bin/bash -x

money=100
betAmount=1
betCount=0
winCount=0

while ((money<200 && money>0 ))
do
  
    bet=$((RANDOM%2))

    if (( $bet==1 ))
    then
        echo "Won"
        ((winCount++))
        money=$(( $money+$betAmount ))
    else
        money=$(( $money-$betAmount ))
        echo "lost"
    fi
    
    ((betCount++))

done

echo "The money is: $money"
echo "the number of bets made: $betCount"
echo "bet won: $winCount times"