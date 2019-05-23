#!/bin/bash

# Outputs a line of characters
# First argument is the lenght of the line
# Second argument cgarater will default to "-" if none is given

[[ ! $1 ]] && { echo "Need line lenght argument" >&2; exit 1; }

# Check that first argument is a number
{ [[ $1 =~ ^[0-9]+$ ]] && lenght="$1"; } || { echo "First argument needs to be a number" >&2; exit 1; }

char="-"
[[ $2 ]] && { char="$2"; }

line=
for (( i=0; i<lenght; ++i )); do
  line="${line}${char}"
done

printf "%s\n" "$line"
exit 0
