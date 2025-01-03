#!/bin/bash

# Check if an input argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <value_in_metres>"
    exit 1
fi

# Convert metre to cm and km
cm=$(expr $1 \* 100)  # Multiply by 100 to convert to cm
km=$(echo "scale=3; $1 / 1000" | bc)  # Divide by 1000 to convert to km with precision

# Display the results
echo "$1 metre in cm is $cm and in km is $km"

