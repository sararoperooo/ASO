#!/bin/bash
if [[ $# -ne 0 ]]; then
     n=$1
     for (( i=1; i<=10; i++ )); do
        resultado=$((i*n))
        echo "$resultado"
     done
else
   echo "Debes pasar un parámetro"
fi
