#!/bin/bash
lista="lista_etc.txt"
ls -l /etc > "$lista"
cat "$lista"
echo "$lista"
num_lineas=$(wc -l < "$lista")
echo "El número de lineas es:$num_lineas"
num_palabras=$(wc -w < "$lista")
echo "El número de palabras es:$num_palabras"
