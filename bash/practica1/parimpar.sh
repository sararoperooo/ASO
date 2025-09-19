#!/bin/bash
read -p "Introduce un número: " num
resto=$((num%2))
if [[ $resto -eq 0 ]]; then
  echo "$num es par"
else
   echo "$num es impar"
fi
