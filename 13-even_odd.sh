#!/bin/bash
#Program a function that determine wether a number is even or odd. myFunction(29)
#will return odd


# Colors
end_color="\033[0m\e[0m"
red_color="\e[0;31m\033[1m"
yellow_color="\e[0;33m\033[1m"
blue_color="\e[0;34m\033[1m"

trap ctrl_c INT

function ctrl_c() {
    echo -e "\n\n\t${red_color}Exiting...${end_color}"
    exit 1
}

function determine_even_odd() {
    number=$1

    if [[ ! $number ]]; then
        echo -e "\n${red_color}[!] You must enter a number${end_color}"
        return
    fi

    if [ $((number % 2)) -eq 0 ]; then
        echo -e "\n${yellow_color}[+]${end_color}${green_color} It is even${end_color}"
    else
        echo -e "\n${yellow_color}[+]${end_color}${blue_color} It is odd${end_color}\n"
    fi
}

echo -n -e "\nEnter a number: "
read input_number
determine_even_odd "$input_number"