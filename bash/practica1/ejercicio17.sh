#!/bin/bash
read -p "Introduce un número: " numero

while [[ numero -ne 0 ]]; do
    resultado=$((numero++))
    echo "$resultado"
    read -p "Introduce un otro: " numero

