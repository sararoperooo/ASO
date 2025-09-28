#!/bin/bash
filas=5
for (( i=1; i<=filas; i++ )); do
  linea=""
  for ((j=1; j<=i; j++ )); do
    echo -n "$j"
  done
  echo ""
done
