#!/bin/bash

# Script to find static files that aren't referenced elsewhere in the project
# Usage: ./find_unused_static_files.sh
# Requires rg: https://github.com/BurntSushi/ripgrep

find static -type f | while read -r file; do
  if ! rg $(basename "$file") . >/dev/null; then
    echo "Potentially unused: $file"
  fi
done
