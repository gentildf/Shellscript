#!/usr/bin/env bash
#-----------------------------------------------------------------------------------------------------------------#

# tarefa.sh - mostrar na tela
#
# Site:       https://null.com.br
# Autor:      Denis Gentil
# Manutenção: Denis Gentil
# ---------------------------------------------------- #
# Variaveis de contagem
comeca=0
ate=100
# ---------------------------------------------------- #
[ $comeca -ge $ate ] && exit 1 # Para evitar erro no for

for i in $(seq $comeca $ate); do
  for j in $(seq $i $ate);do
    printf "*";
  done;
  printf "\n";
done
# ---------------------------------------------------- #
# Changelog:
#
#   v1.0 15/10/2021, Denis:
#       - Início do programa
#       - iImprime na tela * até a contagem terminar.
# ---------------------------------------------------- #
# Testado em:
#   bash
# ---------------------------------------------------- #
# Agradecimentos:
# Mateus Müller - Contribuiu no aprendizado.

#-----------------------------------------------------------------------------------------------------------------#
