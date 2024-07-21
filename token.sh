#!/bin/bash

rndm_str() {
    cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c 60
}

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

FILE=$1

if [ ! -f "$FILE" ]; then
    echo "File not found!"
    exit 1
fi

RANDOM_STRING=$(rndm_str)

sed -i "1s/.*/$RANDOM_STRING/" "$FILE"

echo "$RANDOM_STRING"
