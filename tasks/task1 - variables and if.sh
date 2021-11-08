#!/usr/bin/env bash

VALUE1=11

[ "$VALUE1" -gt 10 ] && echo "Script name is $0
PID is $$"

[ $1 -gt 10 ] && echo "Nome do Script: $0 | PID de execução: $$"

# outro exemplo
[ $1 -gt 10 ] && echo "Nome do Script: $0 | PID de execução: $$" || echo "Number isn't greater than 10"