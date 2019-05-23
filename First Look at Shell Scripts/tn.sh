#!/bin/bash

# Simple note taking script
# Author: IyiKuyoro

echo $(date): $* >> ./notes.txt
echo Note Saved: $*
