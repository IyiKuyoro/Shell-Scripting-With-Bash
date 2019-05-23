#!/bin/bash

# Change file extention

if [[ $# -ne 2 ]]; then
  echo "There should be exacatly two arguments"
fi

for f in *"$1";
  mv "$f" "${f/%$1/$2}"
done
