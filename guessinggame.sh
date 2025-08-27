#!/bin/bash

# Function to count files in current directory
count_files() {
    local num_files=$(ls -l | grep "^-" | wc -l)
    echo $num_files
}

# Main game function
guessing_game() {
    local correct_count=$(count_files)
    local user_guess
    local guess_count=0
    
    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"
    
    while true; do
        read -p "Enter your guess: " user_guess
        ((guess_count++))
        
        # Check if input is a number
        if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
            echo "Please enter a valid number."
            continue
        fi
        
        # Compare guess to actual count
        if [ $user_guess -lt $correct_count ]; then
            echo "Too low! Try again."
        elif [ $user_guess -gt $correct_count ]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed correctly in $guess_count attempts."
            break
        fi
    done
}

# Start the game
guessing_game
