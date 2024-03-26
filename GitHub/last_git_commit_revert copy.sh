#!/bin/bash

# Run:
# chmod +x ./last_git_commit_revert.sh
# ./last_git_commit_revert.sh

# Revert the last commit and stage the changes
git reset --soft HEAD~1

echo "The last commit has been reverted. Changes from the last commit are now staged."
