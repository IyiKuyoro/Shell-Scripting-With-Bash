#!/bin/bash

case $1 in
  cat)
    echo "Meow";;
  dog)
    echo "Whoof";;
  cow)
    echo "Moooo";;
  *)
    echo "unknown";;
esac
