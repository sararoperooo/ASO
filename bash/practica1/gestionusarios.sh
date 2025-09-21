#!/bin/bash
if [[ $# -lt 4 ]]; then
  echo "Faltan parámetros"
  exit 1
fi
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5
XX=$(echo "$apellido1" | cut -c 1,2)
YY=$(echo "$apellido2" | cut -c 1,2)
Z=$(echo "$nombre" | cut -c 1)
usuario="alu${XX}${YY}${Z}"
case $1 in
alta)
  if [[ -z "$grupo" ]]; then
    grupo=$usuario
    sudo groupadd "$grupo"
  fi
  useradd $usuario -m -g "$grupo" "$usuario"
  ;;
baja)
  sudo userdel -r "$usuario"
  ;;
*)
  echo "La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2[grupo]"
  ;;
esac
