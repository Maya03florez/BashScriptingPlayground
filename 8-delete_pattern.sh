#!/bin/bash

# Create a function that removes a specific pattern of characters from a given text.
# myFunction("xyz1,xyz2,xyz3,xyz4,xyz5","xyz") will return (1,2,3,4,5)

function remove_characters() {
    local text="$1"
    local pattern="$2"

    if [ -z "$text" ]; then
        echo "You did not enter any text"
    elif [ -z "$pattern" ]; then
        echo "You did not enter a character pattern"
    else
        result=$(echo "$text" | sed "s/$pattern//g")
        echo "$result"
    fi
}

# Test cases
remove_characters
remove_characters "xyz1,xyz2,xyz3,xyz4,xyz5"
remove_characters "xyz1,xyz2,xyz3,xyz4,xyz5" "xyz"
