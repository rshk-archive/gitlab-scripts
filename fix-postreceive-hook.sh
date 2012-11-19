#!/bin/bash

HOOKFILE=/home/git/.gitolite/hooks/common/post-receive

for repo in /home/git/repositories/*.git; do
    if [ ! -e "$repo"/hooks/post-receive ]; then
	echo "Repository ${repo} is missing hook script -> fixing"
	cp "$HOOKFILE" "$repo"/hooks/post-receive
    fi
done
