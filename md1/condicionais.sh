#!/usr/bin/env bash

VAR="a"
VAR2=""

if [[ "$VAR" = "$VAR2" ]]; then
  echo "São iguais."
else
  echo "São diferentes."
fi

if test "$VAR" = "$VAR2" ; then
  echo "São iguais."
else
  echo "São diferentes."
fi
[ "$VAR" = "$VAR2" ] && echo "São iguais. (&&)"
[ "$VAR" = "$VAR2" ] || echo "São diferentes. (||)"

echo "--------"
