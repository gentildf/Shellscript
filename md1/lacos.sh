#!/usr/bin/env bash

echo '---- for 1 ----'

for (( i = 0; i < 11; i++ )); do
  echo "contagem de 0 a 10: $i"
  sleep 0.1
done

echo '---- for com seq ----'

for i in $(seq 10); do
  echo $i
done

echo '---- for (array) ----'
Frutas=(
'Ameixa'
'Abacate'
'Laranja'
'Goiaba'
)
for i in "${Frutas[@]}"; do
  echo $i
done

echo '---- While ----'
count=0
while [[ $count -lt ${#Frutas[@]} ]]; do
  echo $count
  count=$(($count+1))
done
