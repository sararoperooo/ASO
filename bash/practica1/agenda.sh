#/bin/bash
archivo=listado.txt
echo "Las acciones que puedes realizar son: añadir, buscar. listar, ordenar, borrar"
read -p "Introduce la opción que quieras realizar: "

case $opcion in
  añadir)
    read -p "Introduce el nombre: " nombre
    read -p "Introduce la direccion: " direccion
    read -p "Introduce un teléfono: " telefono
    echo "$nombre | $direccion | $telefono"  >> "$archivo"
    ;;
  buscar)
    if [[ ! -f "$archivo" ]]; then
      echo "No existe el archivo"
    else
      read -p 
