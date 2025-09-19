#!/bin/bash
echo "Las operaciones que puedes realizar son: sumar, restar, dividir o multiplicar"
read -p "Introduce la operación que deseas realizar: " opcion

case $opcion in
sumar)
  read -p "Introduce un número: " num1
  read -p "Introduce otro número: " num2
  resultado=$((num1+num2))
  echo "El resultado de la operación es: $resultado"
  ;;
restar)
  read -p "Introduce un número: " num1
  read -p "Introduce otro número: " num2
  resultado=$((num1-num2))
  echo "El resultado de la operación es: $resultado"
  ;;
multiplicar)
  read -p "Introduce un número: " num1
  read -p "Introduce otro número: " num2
  resultado=$((num1*num2))
  echo "El resultado de la operación es: $resultado"
  ;;
dividir)
  read -p "Introduce un número: " num1
  read -p "Introduce otro número: " num2
  if [[ $num2 -eq 0 ]]; then 
      echo "Error al dividir entre 0"
  else
      resultado=$((num1/num2))
      echo "El resultado de la operación es: $resultado"
  fi
  ;;
*)
  echo "Esa opción no es válida introduce una nueva."
  ;;
esac

