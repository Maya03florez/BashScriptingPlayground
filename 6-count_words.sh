# Program a function to count the number of times a word is repeated in a long text.
# myFunction("hello world hello", "world") will return 2

#!/bin/bash

function count_word_in_text() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "You must provide both text and a word"
    else
        occurrences=$(grep -o -w "$2" <<< "$1" | wc -l)
        echo "The word \"$2\" appears $occurrences times in the text."
    fi
}

# Example usage:
count_word_in_text "este soy yo soy" "soy"
count_word_in_text "large text with large words" "large"



#The function count_word_in_text is defined, and the arguments are checked using the -z 
#test to ensure both text and word are provided.

#The grep command is used with the options -o to show only the matching part, -w to match
#whole words.