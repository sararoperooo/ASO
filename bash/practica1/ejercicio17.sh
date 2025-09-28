#!/bin/bash
read -p "Introduce un número: " numero

while [[ numero -ne 0 ]]; do
    suma=$((numero+suma))
    echo "$suma"
    read -p "Introduce un otro: " numero

done
