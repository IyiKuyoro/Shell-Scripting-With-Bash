#!/bin/bash

# Simple note taking script
# Author: IyiKuyoro

# Get the date
date=$(date)

# Get the topic of note
topic="$1"

# File name variable
filename="./${topic}notes.txt"

#Ask user for input
read -p "Please enter your note:" note

if [[ $note ]]; then
  echo "$date: $note" >> "$filename"
  echo "Note '$note' saved to $filename"
else 
  echo "Note was not provided." > /dev/stderr
fi
