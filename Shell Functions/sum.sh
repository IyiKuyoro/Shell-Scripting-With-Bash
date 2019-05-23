#!/bin/bash

sum() {
  echo $(( $1 + $2 ))
}

starts_with_a () {
  [[ $1 == [aA]* ]];
  return $?
}

if starts_with_a ax; then
  echo "yup"
else
  echo "nope"
fi
