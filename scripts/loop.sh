#!/usr/bin/env bash

echo "
    ==== For 1"
for (( i = 0; i < 10; i++ )); do
    echo $i
done

echo "
    ==== For 2 (seq)"
for i in $(seq 10)
do
    echo $i
done

echo "
==== For 3 (array)"
FRUTAS=(
    'laranja'
    'abacate'
    'açaí'
    'abacaxi'
    'jabuticaba'
)
for i in "${FRUTAS[@]}"
do
    echo "$i"
done

echo "
==== While"
COUNTER=0
while [ $COUNTER -lt ${#FRUTAS[@]} ]
do
    echo $COUNTER
    COUNTER=$(($COUNTER+1))
done