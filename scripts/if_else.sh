#!/usr/bin/env bash

VAR1=""
VAR2="1"

if [[ "$VAR1" = "$VAR2" ]]; then
    echo "as variáveis tem o mesmo valor"
fi

if [[ "$VAR1" = "$VAR2" ]]
then
    echo "as variáveis tem o mesmo valor"
fi

if test "$VAR1" = "$VAR2"
then
    echo "as variáveis tem o mesmo valor"
fi

if [ "$VAR1" = "$VAR2" ]
then
    echo "as variáveis tem o mesmo valor"
fi

[ "$VAR1" = "$VAR2" ] && echo "as variáveis tem o mesmo valor"
[ "$VAR1" = "$VAR2" ] || echo "as variáveis não tem o mesmo valor"