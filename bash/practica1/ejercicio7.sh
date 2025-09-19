#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi
if [ ! -d "$directorio" ]; then
    echo "Error: $directorio no es un directorio válido"
    exit 1
fi
fecha=$(date +%F)
nombre_dir=$(basename "$directorio")
archivo="${fecha}_${nombre_dir}.tar.gz"
tar -czf "$archivo" -C "$(dirname "$directorio")" "$nombre_dir"

echo "Archivo creado: $archivo"
