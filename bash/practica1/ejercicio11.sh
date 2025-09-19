#!/bin/bash
if [[ $# -ne 2 ]]; then
  echo "Debes introducir dos parámetros "
  exit 1
fi

origen=$1
destino=$2

if [[ ! -f "$origen" ]]; then
  echo "El fichero no existe"
  exit 1
fi
if [[  -e "$destino" ]]; then
  echo "Ya existe un fichero con el mismo identificador"
  exit 1
fi

cp "$origen" "$destino"
ls

