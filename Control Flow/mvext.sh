#!/bin/bash

# Change file extention

if [[ $# -ne 2 ]]; then
  echo "There should be exacatly two arguments"
fi

for f in *"$1";
  base=$(basename "$f" "$1")
  echo mv "$f" "${base}$2"
done
