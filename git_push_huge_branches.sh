#!/bin/sh

REMOTE=origin-new
BRANCH=main

git checkout $BRANCH

for i in $(git log --format='%H' --reverse); do
	echo "Pushing $i!"
	git push $REMOTE $i:refs/heads/$BRANCH
done