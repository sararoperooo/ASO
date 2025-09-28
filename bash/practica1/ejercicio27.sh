#!/bin/bash
function existe(){
  fichero=$1
  if  [[ -f "$fichero" ]]; then
    chmod u+x "$fichero"
  else 
    echo "El fichero no existe"
  fi
}

if [[ $# -ne 1 ]]; then 
  echo "Debes pasar un parámetro "
fi

existe "$1"
