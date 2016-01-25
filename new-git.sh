#!/bin/bash

# usage: ~/scripts/new-git.sh [repo-name]
# usage: ~/scripts/new-git.sh [repo-name] npm

REPO_TO_CLONE = git-stub
NEW_REPO_NAME = $1

echo "making new git!"

if [ "$2" == "npm" ]; then
    $REPO_TO_CLONE = npm-es2015-staerter
fi

git clone git@github.com:georgebonnr/$REPO_TO_CLONE.git $NEW_REPO_NAME && cd ./$REPO_TO_CLONE && git remote rm origin && git remote add git@github.com:georgebonnr/$REPO_TO_CLONE.git
