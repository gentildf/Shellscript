#!/usr/bin/env bash

[ "$1" -gt 10 ] && echo "Nome do script: $0 e o PID: $$" 

echo $?
echo $!
echo $*
