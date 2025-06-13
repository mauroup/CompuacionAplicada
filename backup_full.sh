#!/bin/bash

# Script de backup

DESTINO="/backup_dir"
FECHA=$(date +%Y%m%d)

function mostrar_ayuda {
    echo "Uso: $0 [directorio]"
    echo "Opciones:"
    echo "  -help       Muestra esta ayuda."
    echo "  Sin argumentos: backupea /var/log y /www_dir"
    echo "  Con un argumento: backupea ese único directorio"
}

if [ ! -d "$DESTINO" ]; then
    echo "Error: El destino $DESTINO no existe."
    exit 1
fi

if [[ "$1" == "-help" ]]; then
    mostrar_ayuda
    exit 0
fi

if [[ -n "$1" ]]; then
    if [[ -d "$1" ]]; then
        DIRECTORIOS=("$1")
    else
        echo "Error: El directorio '$1' no existe."
        exit 1
    fi
else
    DIRECTORIOS=("/var/log" "/www_dir")
fi

for DIR in "${DIRECTORIOS[@]}"; do
    if [ -d "$DIR" ]; then
        NOMBRE=$(basename "$DIR")
        ARCHIVO="${DESTINO}/${NOMBRE}_bkp_${FECHA}.tar.gz"
        tar -czf "$ARCHIVO" "$DIR"
        echo "✔ Backup generado: $ARCHIVO"
    else
        echo " El directorio $DIR no existe. Se omite."
    fi
done
