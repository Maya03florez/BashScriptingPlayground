#!/bin/bash

#Programa una funcion que devuelva el texto recortado segun el numero de caracteres
#indicados. miFuncion("Hola mundo",4) devolvera "Hola"

function recortarTexto(){
    texto="$1"
    longitud=$2

    if [ ${#texto} -eq 0 ];then
        echo -e "\n[!] No ingresaste texto"
    else
        texto_recortado="${texto:0:longitud}"
        echo -e "\n[+] El texto es $texto_recortado"
    fi
}

if [ $# -ne 2 ];then
    echo "Uso: $0 <texto> <longitud>"
else
    recortarTexto "$1" "$2"
fi