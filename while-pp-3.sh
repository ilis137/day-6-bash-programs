#!/bin/bash -x

heads=0
tails=0

while ((heads<11 && tails<11 ))
do
    flip=$((RANDOM%2))

    if (( $flip==1 ))
    then
        ((heads++))
    else
        ((tails++))
    fi


done

echo "heads: $heads , tails: $tails"

if (( $heads==11 ))
then
    echo "heads wins"
else
    echo "tails wins"
fi

