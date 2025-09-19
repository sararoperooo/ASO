#!/bin/bash
read -p "Dame un número: " num1
read -p "Dame otro numero: " num2

if [[ $num1 -gt $num2 ]]; then
    echo "$num1 es mayor que $num2"
else
    echo "$num2 es mayor que $num1"
fi
