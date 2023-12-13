#!/bin/bash

#Program a function that validates whether a given word or phrase is a palindrome
# (that reads the same forwards and backwards). myFunction("salas") will return true 


function palindrome() {
    local word="$1"

    if [ -z "$word" ]; then
        echo -e "\n[!] You must enter a text."
    else
        reversed_word=$(echo "$word" | rev)
        if [ "$reversed_word" == "$word" ]; then
            echo -e "\n[+] \"$word\" is a palindrome."
        else
            echo -e "\n[!] \"$word\" is not a palindrome."
        fi
    fi
}

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo -e "\n[!] You must provide a text as an argument."
else
    palindrome "$1"
fi