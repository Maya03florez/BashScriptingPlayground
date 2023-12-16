#!/bin/bash

function getRandomNumber() {
  echo $(( RANDOM % ($2 - $1 + 1) + $1 ))
}

declare -a randomArray=()

# Generate 20 random numbers in the range of 501 to 601
for ((i=0; i<20; i++)); do
  randomArray+=($(getRandomNumber 501 601))
done

# Print the random array
echo "${randomArray[@]}"