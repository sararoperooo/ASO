#!/bin/bash
if [[ $# -ne 1 ]]; then
 echo "Debes pasar un parámetro"
fi
dir=$1
if [[ ! -d "$dir" ]]; then
  echo ""$dir" no es un directorio correcto"
fi
contador=0
for entrada in "$dir"/* ; do
   [[ -e "$entrada" ]] || continue
   nombre
