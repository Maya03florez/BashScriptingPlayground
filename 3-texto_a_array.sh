#!/bin/bash

echo "Escribe el texto a convertir a array "
read texto
echo "Escribe el delimitador"
read delimitador

function convertiraArray(){
    if [ ! "$texto" ];then
        echo "[!] Debes escribir un texto"
    else
        IFS="$delimitador" read -r -a array <<< "$texto"
        echo "El texto convertido a array es:"
        printf '%s\n' "${array[@]}"
    fi
}

convertiraArray