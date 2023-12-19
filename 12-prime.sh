#!/bin/bash

# This script defines a function to determine whether a given number is prime or not.

# Function to check if a number is prime
function is_prime() {
    local number=$1
    local count=0

    # Loop through potential divisors from 1 to the number itself
    for ((i=1; i<=$number; i++)); do
        # Check if 'number' is divisible evenly by 'i'
        if [ $((number % i)) -eq 0 ]; then
            ((count++))
        fi
    done

    # If there are exactly 2 divisors (1 and the number itself), return 1 (true), else return 0 (false)
    if [ $count -eq 2 ]; then
        return 1
    else
        return 0
    fi
}

# Function to run the prime-checking function and display the result
function run() {
    local number=$1
    is_prime $number
    local prime=$?

    # Display whether the number is prime or not
    if [ $prime -eq 1 ]; then
        echo -e "\n[+] $number is prime."
    else
        echo -e "\n[!] $number is not prime."
    fi
}

# Test the function with various numbers
run 0
run 1
run 2
run 4