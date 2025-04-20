#!/bin/bash

# Recorre todos los archivos de video en el directorio actual
for file in *.{mp4,mkv,avi,mov}; do
    # Verifica si el archivo existe para evitar errores si no hay coincidencias
    [ -e "$file" ] || continue

    # Obtiene el nombre del archivo sin la extensión
    filename="${file%.*}"

    # Crea una carpeta con el nombre del archivo
    mkdir -p "$filename"

    # Mueve el archivo a su carpeta correspondiente
    mv "$file" "$filename/"
done

echo "Organización completada."
