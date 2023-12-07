#!/bin/bash

# Function to repeat text a specified number of times
function repeat_text() {
    local text="$1"
    local quantity="$2"

    if [ -z "$text" ]; then
        echo "[!] Error: No text provided."
        return 1
    fi

    if [ -z "$quantity" ]; then
        echo "[!] Error: No quantity provided."
        return 1
    fi

    if [ "$quantity" -lt 1 ]; then
        echo "[!] Error: Quantity must be a positive integer."
        return 1
    fi

    for i in $(seq "$quantity"); do
        echo "$text"
    done
}

# Call the function
repeat_text "Hello world" 3