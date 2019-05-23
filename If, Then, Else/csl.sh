#!/bin/bash

# Compare the length of two strings
# Author: IyiKuyoro

if [[ $# -ne 2 ]]; then
  echo "Exactly two arguments needed"
  exit 1
fi

# Get the lenght of the two arguments
lenght_1="${#1}"
lenght_2="${#2}"

# Compare their lengths
if [[ ${lenght_1} -gt ${lenght_2} ]]; then
  echo "$1 is greater than $2"
elif [[ ${lenght_1} -eq ${lenght_2} ]]; then
  echo "Both arguments are equla in lenght"
else
  echo "$2 is greater than $1"
fi

exit 0
