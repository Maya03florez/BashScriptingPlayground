#!/bin/bash

function is_palindrome() {
  local number=$1

  if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Expected an integer, got $(typeof $number)"
    exit 1
  fi

  number_str="$number"
  reversed_str=$(echo "$number_str" | rev)

  if [ "$number_str" = "$reversed_str" ]; then
    echo "It is a palindrome! Original number: $number, reversed number: $reversed_str"
    return 0
  else
    echo "It is not a palindrome. Original number: $number, reversed number: $reversed_str"
    return 1
  fi
}

# Examples
is_palindrome 2002
is_palindrome 5005
is_palindrome 500
is_palindrome "2002"