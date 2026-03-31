#!/bin/bash

# Simple Interest Calculator
# This script calculates simple interest based on principal, rate, and time period

calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    
    # Calculate simple interest: SI = (P * R * T) / 100
    local si=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    
    # Calculate total amount: Total = Principal + SI
    local total=$(echo "scale=2; $principal + $si" | bc)
    
    echo "$si $total"
}

main() {
    echo "=== Simple Interest Calculator ==="
    echo ""
    
    # Get input from user
    read -p "Enter Principal amount: " principal
    read -p "Enter Rate of interest (% per year): " rate
    read -p "Enter Time (years): " time
    
    # Validate inputs
    if ! [[ "$principal" =~ ^[0-9]+([.][0-9]{1,2})?$ ]] || \
       ! [[ "$rate" =~ ^[0-9]+([.][0-9]{1,2})?$ ]] || \
       ! [[ "$time" =~ ^[0-9]+([.][0-9]{1,2})?$ ]]; then
        echo "Error: Please enter valid numeric values."
        exit 1
    fi
    
    # Calculate simple interest
    result=$(calculate_simple_interest "$principal" "$rate" "$time")
    si=$(echo "$result" | awk '{print $1}')
    total=$(echo "$result" | awk '{print $2}')
    
    # Display results
    echo ""
    echo "Principal:         ₹${principal}"
    echo "Rate:              ${rate}% per annum"
    echo "Time:              ${time} year(s)"
    echo "Simple Interest:   ₹${si}"
    echo "Total Amount:      ₹${total}"
}

# Run the main function
main
