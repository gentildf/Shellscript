#!/usr/bin/env bash

# chaves_flags.sh - Extrai usuários de /etc/passwd
#
# Site:       https://null.com.br
# Autor:      Denis Gentil
# Manutenção: Denis Gentil
# ---------------------------------------------------- #
# Irá extrair usuários do /etc/passwd, havendo a 
# possibilidade de colocar em maiúsculo e em ordem 
# alfabética.
#
# Exemplos:
# $ ./chaves_flags.sh -s -m
# Neste exemplo ficará em maiúsculo e em ordem 
# alfabética.
# ------------------CHANGELOG------------------------- #
#   v1.0 
#   - Criação do programa. 
#   v1.1
#   - Alterando variáveis para deixar com melhor retorno 
#   de aparencia.
#   v1.2
#   - Foi adicionado a opçao de Maiúscula para impressão
#   em tela.
#   v1.3
#   - Foi adicionado a opção de imprimir na tela mais de
#   uma opção.
# ------------------VARIAVEIS------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1 )"
MENSAGEM_USO="
    $(basename $0) - [OPÇÕES] 

    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
    -m - Colocar tudo em Maiúsculo.
" # Colocar o $(basename $VAR) para sumir o './'

VERSAO="V1.2"
#ALFAB="$(echo "$USUARIOS" | sort)"
KEY_ORDER=0
KEY_BOX=0

# ------------------EXECUÇÃO-------------------------- #
#[ "$1" = "-h" ] && echo "$MENSAGEM_USO" && exit 0
#[ "$1" = "-v" ] && echo "$VERSAO" && exit 0
#[ "$1" = "-s" ] && echo "$ALFAB" && exit 0
#[ "$1" = "-s" ] && echo "$USUARIOS" | sort && exit 0

while test -n "$1" # Para validar se há parametros.
do
    case "$1" in
        -h) echo "$MENSAGEM_USO" && exit 0     ;;
        -v) echo "$VERSAO" && exit 0           ;;
        -s) KEY_ORDER=1                        ;;
        -m) KEY_BOX=1                          ;;
        *) echo "OPÇÃO INVALIDA, VER -h" && exit 1 ;;
    esac
    shift #Coloca o valor de $2 no $1.
done

#[ "$KEY_ORDER" = "1" ] && echo "$USUARIOS" | sort && exit 0
#[ "$KEY_BOX" = "1" ] && echo "$USUARIOS" | tr [a-z] [A-Z] 
[ "$KEY_ORDER" = "1" ] && USUARIOS=$(echo "$USUARIOS" | sort)
[ "$KEY_BOX" = "1" ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])
echo "$USUARIOS"