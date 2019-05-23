#!/bin/bash

# This script prints a range of numbers
# Usage: count [-r] [-b n] [-s n] stop
# -b gives the number to begin with (default: 0)
# -h show this help message
# -r reverses the count
# -s sets step size (default: 1)
# Counting will stop at stop

usage () {
  cat <<END
count [-r] [-b n] [-s n] stop

Print each number up to stop, beginning at 0
  -b: number to begin with (default: 0)
  -r reverses the count
  -s sets step size (default: 1)
  -h show this help message
END
}

# function to hanlde errors.
# First argument: error message to print
# Second argument: exit code to exit script with
error () {
  echo "Error: $1"
  usage
  exit $2
}

declare reverse=""
declare -i begin=0
declare -i step=1

while getopts ":b:s:r:h" opt; do
  case $opt in
    r)
      reverse="yes";;
    b)
      [[ ${OPTARG} =~ ^[0-9]+$ ]] || error "${OPTARG} is not a number" 1
      begin=${OPTARG};;
    s)
      [[ ${OPTARG} =~ ^[0-9]+$ ]] || error "${OPTARG} is not a number" 1
      step=${OPTARG};;
    h)
      usage
      exit 0;;
    :)
      echo "-${OPTARG} is missing an argunent"
      exit 1;;
    \?)
      echo "Unknown option -${OPTARG}"
      exit 1;;
  esac
done

shift $(( OPTIND -1 ))

[[ $1 ]] || { echo "Missing an argument" >&2; exit 1; }
declare end="$1"

if [[ ! $reverse ]]; then
  for (( i=begin; i<=end; i+=step )); do
    echo $i
  done
else
  for (( i=end; i>=begin; i-=step )); do
    echo $i
  done
fi

exit 0
