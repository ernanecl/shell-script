#!/usr/bin/env bash

PARTY="vamos
na
festa
"

echo "$PARTY"

####################

NUMBER1=123
NUMBER2=54

TOTAL=$(($NUMBER1 - $NUMBER2))

echo $TOTAL

####################

SAIDA_CAT=$(cat /etc/passwd | grep user_name)

echo $SAIDA_CAT

echo "---------------variáveis reservadas-----------------"

echo "Parametro 1: $1"
echo "Parametro 2: $2"

echo "todos os paramentros $*"

echo "quantos paramentros: $#"

echo "status da ultima saída de comando: $?"

echo "PID: $$"

echo $0