#!/bin/bash

# usage: ~/scripts/new.sh [repo-name]
# usage: ~/scripts/new.sh [repo-name] npm

CLONE_FROM="git-stub"
NEW_REPO_NAME=$1
MODIFIER=$2

if [ "$MODIFIER" == "npm" ]; then
    CLONE_FROM="npm-es2015-starter"
fi
curl -u georgebonnr https://api.github.com/user/repos -d '{ "name": "'$NEW_REPO_NAME'" }' && \
printf "\n Clone source: $CLONE_FROM:\n\n"
git clone git@github.com:georgebonnr/$CLONE_FROM.git $NEW_REPO_NAME && \
cd ./$NEW_REPO_NAME && git remote rm origin && \
git remote add origin git@github.com:georgebonnr/$NEW_REPO_NAME.git && \
git push -u && subl .

