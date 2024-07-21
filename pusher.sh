#!/bin/bash

rndm_str() {
    cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c 10
}

CURRENT_DATE=$(date +%F)
RANDOM_STRING=$(rndm_str)
COMMIT_MESSAGE="change: $CURRENT_DATE $RANDOM_STRING"

git add .
git commit -m "$COMMIT_MESSAGE"
git push

echo "Changes committed and pushed with message: \"$COMMIT_MESSAGE\""
