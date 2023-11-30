#!/bin/bash

# Colours
green_color="\e[0;32m\033[1m"
end_color="\033[0m\e[0m"
red_color="\e[0;31m\033[1m"
blue_color="\e[0;34m\033[1m"
yellow_color="\e[0;33m\033[1m"
purple_color="\e[0;35m\033[1m"
turquoise_color="\e[0;36m\033[1m"
gray_color="\e[0;37m\033[1m"

function ctrl_c() {
    printf "\n\t ${red_color}[!] Saliendo...${end_color}\n"
    tput cnorm
    exit $?
}

trap ctrl_c INT

function countCharacters() {
    tput civis
    string="$1"
    if [ -z "$string" ]; then
        printf "\n${red_color}[+] Debes ingresar una cadena${end_color}\n"
    else
        printf "\n${yellow_color}[+]${end_color} ${gray_color}La cantidad de caracteres en la cadena proporcionada es${end_color}${yellow_color} %s\n" "${#string}"
    fi
    tput cnorm
}

if [ "$#" -eq 0 ]; then
    printf "\n${red_color}[+] Debes proporcionar una cadena como parámetro${end_color}\n"
else
    countCharacters "$1"
fi