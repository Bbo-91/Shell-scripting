#!/bin/bash

decompress() {
    case $1 in
        *.tar.bz2) tar xvjf "$1" ;;  #tar files compressed with bzib2 compression
        *.tar.gz|*.tgz) tar xvzf "$1" ;;  #tar files compressed gzip compression
        *.tar.xz) tar xzvf "$1" ;;  #tar files compressed xz compression
        *.tar) tar xzvf "$1" ;;  #extract files with xvf options
        *.zip) unzip "$1" ;;  #ZIP compression
        *.gz) gunzip "$1" ;;  #gzip compression
        *.bz2) bunzip2 "$1" ;;  #bzib2 compression
        *) echo "Unsupported file format" ;;
    esac
}
# -z -->check if first string is empty
# -n -->check if first string is not empty
if [[ -z -$1 ]]; then #to check if first argument is empty
    echo "Please provide at least one file to decompress"
    exit 1 #error
fi

for file in "$@"; do # a loop to go throgh all the arguments
    if [ -f "$file" ]; then #check if path exists
        decompress "$file"
    else
        echo "File not found: $file"
    fi
done