#!/bin/bash
if [[ $# -ne 1 ]]; then
  echo "debes pasar un parámetro"
fi
dir=$1
if [[ ! -d "$dir" ]]; then
  echo ""$dir" no es un diractorio válido"
fi
ficheros=0
directorios=0
for entrada in "$dir"/*; do
  if [[ -f "$entrada" ]]; then
    ficheros=$((ficheros+1))
  elif [[ -d "$entrada" ]]; then
    directorios=$((directorios+1))
  fi
done
echo "La cantidad de directorios es: "$dir""
echo "La cantidad de ficheros es: "$ficheros""
echo "La cantidad de subdirectorios es: "$directorios""

