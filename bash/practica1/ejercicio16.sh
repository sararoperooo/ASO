#!/bin/bash
for (( i=1; i<=1000; i++ )); do
    resultado=$((i++))
    echo "$resultado"
done

contador=1
while [[ $contador -le 1000 ]]; do
    resultado=$((contador+contador))
    ((contador++))
done

count=1
until [[ $count -gt 1000 ]]; do
     resultado=$((count++))
     echo "$resultado"
     ((count++))
done
