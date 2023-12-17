#!/bin/bash


#Write a function that calculates the factorial of a number (The factorial of a positive integer n is 
#defined as the product of all positive integers from 1 to n). For example, myFunction(5) should return 
#120.


calculate_factorial() {
  local n=$1
  local result=1

  if [[ $n -lt 0 ]]; then
    echo "Error: Factorial is not defined for negative numbers."
    return 1
  fi

  for ((i = 1; i <= n; i++)); do
    result=$((result * i))
  done

  echo $result
}

# Example: Calculate factorial of 5
result=$(calculate_factorial 5)
echo "Factorial of 5 is: $result"