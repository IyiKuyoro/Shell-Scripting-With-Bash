#!/bin/bash

declare -x var="outer"
echo "Outer before: $var"
./inner.sh
echo "Outer after: $var"
