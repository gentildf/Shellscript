#!/usr/bin/env bash

#----------------------------------------------------------#
#      estracao.sh - Programa de extração de lista de
#                    filmes de determinado site.
# 
# Site:       https://null.com.br
# Autor:      Denis Gentil
# Manutenção: Denis Gentil
#
#--------------------------VARIAVEIS-----------------------#
LIST_OPCAO="
    $(basename $0) - Lista de filmes de 2021
        1 - Abril
        2 - Maio
        3 - Junho
        4 - Julho
        5 - Agosto
        6 - Setembro
        7 - Outubro
        8 - Novembro
        9 - Dezembro
        0 - Mostrar todos
"
#--------------------------FUNÇÃO--------------------------#
Filtro () {
lynx -source https://www.omelete.com.br/filmes/calendario-estreia-cinema-2021#7 | grep "<li>.*<" > listafilmes.txt
sed -i 's/<li><a.*//' listafilmes.txt 
sed -i 's/<li>//;s/<\/li>//' listafilmes.txt 
sed -r '/^\s*$/d' -i listafilmes.txt
cat listafilmes.txt
}
#--------------------------CHANGELOG-----------------------#
#   v1.0 - Criação do script de extração.
#--------------------------TESTE---------------------------#
[ -x "$(which lynx)" ] || sudo apt install lynx -y;
# Verificar se o lynx está instalado.
#--------------------------EXECUÇÃO------------------------#
echo "-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-."
echo "$LIST_OPCAO"
read -p "Digite uma opção: " option
echo "
-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.
"
case "$option" in
    1) Filtro | grep "abril"    ;;
    2) Filtro | grep "maio"     ;;
    3) Filtro | grep "junho"    ;; 
    4) Filtro | grep "julho"    ;;
    5) Filtro | grep "agosto"   ;;
    6) Filtro | grep "setembro" ;;
    7) Filtro | grep "outubro"  ;;
    8) Filtro | grep "novembro" ;; 
    9) Filtro | grep "dezembro" ;;
    0) Filtro                   ;;
    *) echo "OPÇÃO INVALIDA"    ;;

esac