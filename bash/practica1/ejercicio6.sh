#!/bin/bash
read -p "Introduce una palabra: " palabra
fichero="lista.txt"
echo "$palabra" >> "$fichero"
echo "La palabra "$palabra" se ha añadido al fichero "$fichero""
