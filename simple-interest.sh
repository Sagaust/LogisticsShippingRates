#!/bin/bash

# Script to calculate simple interest

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Simple Interest formula: (P * R * T) / 100
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "The Simple Interest is: $interest"
}

# Main script starts here
echo "Simple Interest Calculator"

# Read user input
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time period (in years): " time

# Call the function with user input
calculate_simple_interest $principal $rate $time
