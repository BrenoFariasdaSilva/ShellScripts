#!/bin/bash

# Run:
# chmod +x ./commit_subdirectories.sh
# ./commit_subdirectories.sh

for d in */ ; do
	echo "Entering $d"
	cd "$d" || exit
	
	# Attempt to add changes; if there are no changes, 'git commit' won't proceed.
	git add .
	
	# Capture the output of 'git commit'.
	output=$(git commit -m "DOCS: Updating the Contributing Section of the README" 2>&1)
	
	# Check if the commit was successful by not finding the "nothing to commit" message.
	if [[ ! $output == *"nothing to commit"* ]]; then
		echo "Changes successfully committed in $d"
		# Proceed with pushing the changes since there was something to commit.
		git push
	fi
	
	# Go back to the parent directory before iterating to the next directory.
	cd .. || exit
done
