#!/bin/bash

# Write a function to convert Celsius to Fahrenheit and vice versa.
# myFunction(0,"c") will return 32°F

function temperature_converter(){
    degrees=$1
    unit=$2

    # Check if both degrees and unit are provided
    if [ ! "$degrees" ] || [ ! "$unit" ]; then
        echo "You must enter the necessary parameters"
        return
    fi

    # Convert Celsius to Fahrenheit
    if [ "$unit" == "C" ]; then
        fahrenheit=$((degrees * 9/5 + 32))
        echo "$degrees°C = $fahrenheit°F"
    
    # Convert Fahrenheit to Celsius
    elif [ "$unit" == "F" ]; then
        celsius=$(( (degrees - 32) * 5/9 ))
        echo "$degrees°F = $celsius°C"
    
    # Handle invalid temperature unit
    else
        echo "Invalid temperature type. Please use 'C' for Celsius or 'F' for Fahrenheit."
    fi
}

# Test cases
temperature_converter        # Missing parameters
temperature_converter 0 C    # Convert 0°C to Fahrenheit
temperature_converter 0 F    # Convert 0°F to Celsius