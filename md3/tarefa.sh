#!/usr/bin/env bash

# tarefa.sh - Estrai info do comando dmesg
#
# Site:       https://null.com.br
# Autor:      Denis Gentil
# Manutenção: Denis Gentil
# ---------------------------------------------------- #
# Irá extrair info do comando dmesg, havendo a 
# possibilidade de selecionar inputs, interrupts e  
# eventos que iniciam ou pararam.
#
# Exemplos:
# $ ./tarefa.sh -s -f
# Neste exemplo mostra eventos que iniciaram e pararam 
# ------------------CHANGELOG------------------------- #
#   v1.0 
#   - Criação do programa. 
# ------------------VARIAVEIS------------------------- #
START=0
FINISH=0
INPUT=0
VERSAO="v1.0"
HELP="
    $(basename $0) - OPÇÕES DE PARAMETROS
    -s - Info de interação de inicio;
    -i - Info de input;
    -f - Info de interação de termino;
    -v - Info de versão do programa;

"
# ------------------EXECUÇÃO-------------------------- #

test -e "$HOME/msg.txt"  || touch $HOME/msg.txt ;
while test -n "$1"
do
    case "$1" in
        -s) START=1                     ;;
        -i) INPUT=1                     ;;
        -f) FINISH=1                    ;;
        -v) echo "$VERSAO" && exit 0    ;;
        -h) echo "$HELP" && exit 0      ;;
        *) echo "PARÂMETRO INVALIDO"   ;;
    esac
    shift
done

[ "$START" = "1" ] && $(dmesg | grep Start* >> $HOME/msg.txt)
[ "$INPUT" = "1" ] && $(dmesg | grep input* >> $HOME/msg.txt)
[ "$FINISH" = "1" ] && $(dmesg | grep Finish* >> $HOME/msg.txt)

echo "$(less "$HOME/msg.txt" | sort)"
