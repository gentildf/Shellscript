#!/usr/bin/env bash
# ------------------VARIAVEIS------------------------- #
DEBUG=0
VERDE="\033[32;5m"
RED="\033[31;5m"

# ------------------FUNÇÕES--------------------------- #
Multiplo () {
    for i in $(seq 2 12); do
        Debugar 1 "$RED" "\\033[mValor a ser multiplicado por $i"
        total=$((i*i));
        Debugar 2 "$VERDE" "\\033[mMultiplicado fica = $total"
    done
}
Debugar () {
    [ $1 -le $DEBUG ] && echo -e "----$2 DEBUG NIVEL $* ----"
}
# ------------------EXECUÇÃO-------------------------- #
case "$1" in
    -d) [ $2 ] && DEBUG=$2 ;;
    *) Multiplo && exit 0  ;;
esac
Multiplo