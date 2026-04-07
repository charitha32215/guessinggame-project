#!/usr/bin/env bash

# Function to count files
count_files() {
    ls -1 | wc -l
}

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory."

files=$(count_files)
guess=0

while [[ $guess -ne $files ]]
do
    echo "Enter your guess:"
    read guess

    if [[ $guess -lt $files ]]
    then
        echo "Too low!"
    elif [[ $guess -gt $files ]]
    then
        echo "Too high!"
    else
        echo "Congratulations! You guessed correctly 🎉"
    fi
done