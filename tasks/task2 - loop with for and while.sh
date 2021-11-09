#!/usr/bin/env bash

for (( i = 0; i <= 10; i++ ))
do
    [ "$(( i % 2 ))" = 0 ] && echo "
    $i é divisivel por 2" || echo "
    $i não é divisivel por 2"
done

# another method

for i in $(seq 0 10)
do
        [ $(($i % 2)) -eq 0 ] && echo "Número $i é divisível por 2"
done