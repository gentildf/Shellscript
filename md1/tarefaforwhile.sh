#!/usr/bin/env bash

count=0
while [ $count -lt 11 ]; do
    [ $(($count%2)) -eq 0 ] &&  echo "O número $count é par."
  count=$(($count+1))
done
