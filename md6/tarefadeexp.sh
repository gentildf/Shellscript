#!/usr/bin/env bash
#------------VARIAVEIS ------------#
COMANDO="$(cut -d : -f 1 /etc/group)"
#------------ EXECUÇÃO ------------#
echo "Para este exercício liste todos os grupos do seu Linux com este comando:

  $ cut -d : -f 1 /etc/group

Envie a saída do comando acima para o comando grep (use o PIPE '|') 
e faça as seguintes Expressões Regulares:"
echo ""
echo "Grupos que começam com a letra 'r' no arquivo /etc/group :"
echo "$COMANDO"| grep "^r" 
echo "Grupos que terminem com a letra 't' :"
echo "$COMANDO"| grep "t$" 
echo "Grupos que começam com a letra 'r' e terminem com a letra 't' :"
echo "$COMANDO"| grep "^r.*t$" 
echo "Grupos que terminem com a letra 'e' ou 'd' :"
echo "$COMANDO"| grep "[ed]$" 
echo "Grupos que não terminem com a letra 'e' ou 'd' :"
echo "$COMANDO"| grep "[^ed]$" 
echo "Grupos que começam com qualquer dígito e a segunda letra seja um 'u' ou 'd' :"
echo "$COMANDO"| grep "^.[ud]" 
echo "Grupos que tenha seu nome de 2 a 4 dígitos de tamanho :"
echo "$COMANDO"| egrep "^.{2,4}$" 
echo "Grupos que comecem com 'r' ou 's' (use o operador OR):"
echo "$COMANDO"| egrep "^r|^s" 