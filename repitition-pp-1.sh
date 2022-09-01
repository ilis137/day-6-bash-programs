#!/bin/bash -x

read -p "enter a power for 2: " n

for ((i=1;i<=n;i++))
do

echo $((2**i))

done