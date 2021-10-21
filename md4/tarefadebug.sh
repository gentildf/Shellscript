#!/usr/bin/env bash
# ------------------VARIAVEIS------------------------- #
DEBUG=0

# ------------------FUNÇÕES--------------------------- #
Multiplo () {
    for i in $(seq 2 12); do
        Debugar 1 "Valor a ser multiplicado por si $i"
        total=$((i*i));
        Debugar 2 "Multiplicado fica = $total"
    done
}
Debugar () {
    [ $1 -le $DEBUG ] && echo "---- DEBUG NIVEL $* ----"
}
# ------------------EXECUÇÃO-------------------------- #
case "$1" in
    -d) [ $2 ] && DEBUG=$2 ;;
    *) Multiplo && exit 0  ;;
esac
Multiplo