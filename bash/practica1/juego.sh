#!/bin/bash
n_correcto=8
read -p "Introduce un número del 1 al 100: " opcion
while [[ $opcion -ne $n_correcto && $opcion -ne 0 ]]; do
   read -p "Introduce otro número: " opcion
   if [[ $opcion -eq $n_correcto ]]; then
     echo "Enhorabuena has ganado"
     break
   elif [[ $opcion -eq 0 ]]; then
      break
   fi
done
