#!/usr/bin/env bash

for (( i = 0; i <= 10; i++ ))
do
    [ "$(( i % 2 ))" = 0 ] && echo "
    $i é divisivel por 2" || echo "
    $i não é divisivel por 2"
done

