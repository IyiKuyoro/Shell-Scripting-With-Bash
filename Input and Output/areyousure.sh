#!/bin/bash

# Are you sure
# Author: IyiKuyoro

echo "Are you sure (y/n)? "

answered=
while [[ ! $answered ]]; do
  read -r -n 1 -s answer
  if [[ $answer = [Yy] ]]; then
    answered="yes"
  elif [[ $answer = [Nn] ]]; then
    answered="No"
  fi
done

printf "\n%s\n" $answered
