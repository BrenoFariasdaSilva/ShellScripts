#!/bin/bash

# Run:
# chmod +x ./commit_subdirectories.sh
# ./commit_subdirectories.sh

for d in */ ; do                                                                                                                                                                                                ─╯
    echo "Entering $d"
    cd "$d"
    git add .
    git commit -m "DOCS: Updating the Contributing Section of the README"
    git push
    cd ..
done

