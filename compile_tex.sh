#!/bin/bash

# Split on newline only
IFS=$'\n'

# Loop over all files
for texfile in $(git diff --name-only HEAD~ HEAD | grep .tex); do
    # Compile the tex file
    latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode "$texfile"
done

