#!/bin/bash

# Program a function that reverses the words of a string.
# myFunction("Hola") will return "odnuM aloH"

function reverse_string(){
    string="$1"

    if [ -z "$string" ]; then
        echo -e "\n[!] You didn't enter a string"
    else
        reversed_string="$(echo "$string" | rev)"
        echo -e "\n[+] The final result is $reversed_string"
    fi
}

reverse_string "$1"
