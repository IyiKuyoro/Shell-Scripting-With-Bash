#!/bin/bash

# A simple guessing game

# Get a random number <= 100
declare -ir target=$(( ($RANDOM % 100) + 1 ))

# Initialize the user's guess
declear -i guess=0

until [[ $guess -eq $target ]]; do
  read -p "Take a guess: " guess

  # If guess is not a number
  (( guess )) || continue

  if [[ $guess -lt $target ]]; then
    printf "Higher!"
  elif [[ $guess -gt $target ]]; then
    printf "Lower!"
  else
    printf "You found it!"
  fi
done

exit 0;
