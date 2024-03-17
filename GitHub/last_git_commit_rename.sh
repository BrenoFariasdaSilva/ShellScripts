#!/bin/bash

# Run:
# chmod +x ./last_git_commit_rename.sh
# ./last_git_commit_rename.sh '<new_commit_message>'

# Check if a commit message was provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 '<new_commit_message>'"
    exit 1
fi

# Capturing the new commit message
NEW_COMMIT_MESSAGE="$*"

# Amending the last commit with the new commit message
git commit --amend -m "$NEW_COMMIT_MESSAGE"

echo "The last commit message has been updated."
