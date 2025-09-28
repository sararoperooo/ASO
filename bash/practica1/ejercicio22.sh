#!/bin/bash
if [[ $# -ne 1 ]]; then
  echo "debes pasar como parámetro un directorio con su ruta completa "
fi
dir=$1
if [[ ! -d "$dir" ]]; then
   echo ""$dir" no es un directorio correcto"
fi
contador=0
for entrada in "$dir"/*; do
  if [[ -d "$entrada" ]]; then
    echo ""$entrada" es un directorio"
  elif [[ -f "$entrada" ]]; then
    echo ""$entrada es un fichero"
  else
     echo ""$entrada" es otro tipo de archivo"
fi

