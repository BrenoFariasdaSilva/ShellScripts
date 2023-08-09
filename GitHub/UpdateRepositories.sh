#!/bin/bash

# chmod +x UpdateRepositories.sh
# ./UpdateRepositories.sh

Update_Repositories() {
	find . -type d -name .git -exec sh -c 'cd "$0/.." && echo "Updating $PWD" && git pull' {} \;
}

Update_Repositories
