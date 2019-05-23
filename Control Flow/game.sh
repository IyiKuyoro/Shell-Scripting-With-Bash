#!/bin/bash

# A simple guessing game

# Get a random number < 100
target=$(($RANDOM % 100))

# Initialize the user's guess
guess=

until [[ $guess -eq $target ]]; do
  read -p "Take a guess: " guess
  if [[ $guess -lt $target ]]; then
    printf "Higher!"
  elif [[ $guess -gt $target ]]; then
    printf "Lower!"
  else
    printf "You found it!"
  fi
done

exit 0;
