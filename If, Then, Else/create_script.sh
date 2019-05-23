#!/bin/bash

# Create Script
# This script creates a new bash script, sets the permission and more
# Author: IyiKuyoro

# Is there an argument
if [[ ! $1 ]]; then
  echo "No argumenet"
  exit 1
fi

scriptname="$1"
bindir="${HOME}/bin"
filename="${bindir}/${scriptname}.sh"

# Does file exist
if [[ -e "${filename}" ]]; then
  echo "'$filename' already exists in this location"
  exit 1
fi

# Check if command exists
if type "$scriptname"; then
  echo "Command already exist with the name ${scriptname}"
  exit 1
fi

# Check bin directory exist
if [[ ! -d "$bindir" ]]; then
  # Create new bin
  if mkdir "$bindir"; then
    echo "created ${bindir}"
  else
    echo "Could not create ${bindir}"
    exit 1
  fi
fi

# Script was created
if touch "${filename}"; then
  chmod u+x "${filename}"
  echo "New script ${filename} created"
  code "${filename}"
  exit 0
fi
